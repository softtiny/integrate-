import { test, expect,chromium  } from '@playwright/test';


test('Launch Dev Headless', async ( ) => {
    const browser = await chromium.launch();
    const context = await browser.newContext();
    const page = await context.newPage();
    await page.goto('http://localhost:9000');
    await expect(page).toHaveTitle(/Farm/);
    let i = 0;
    while (i<3) {
        await page.screenshot({ path: `screenshot-${i}.png`, fullPage: true });
        page.mainFrame().waitForFunction('window.innerWidth > 100');
        page.mainFrame().waitForFunction('window.innerWidth > 100');
        page.mainFrame().waitForFunction('window.innerWidth > 100');
        i++;
    }
    await page.goto("http://localhost:9000?main=2");
    await expect(page).toHaveTitle(/Farm/);
    i = 0;
    while (i<100) {
        await page.screenshot({ path: `screenshot2-${i}.png`, fullPage: true });
        page.mainFrame().waitForFunction('window.innerWidth > 100');
        page.mainFrame().waitForFunction('window.innerWidth > 100');
        page.mainFrame().waitForFunction('window.innerWidth > 100');
        i++;
    }
    await context.close();
    await browser.close();
});