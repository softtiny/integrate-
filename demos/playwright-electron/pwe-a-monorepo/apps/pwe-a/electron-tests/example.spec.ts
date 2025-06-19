import { test } from '@playwright/test';
import { resolve } from 'node:path';
import { cwd,env } from 'node:process';
const { _electron: electron } = require('playwright');

test('Launch Electron App Headless', async () => {
  test.setTimeout(100000 * 1000);
  console.log('Current working directory:', cwd());
  console.log('Current working env:', env);
  console.log(electron)
  
  // Launch Electron app.
  const electronApp = await electron.launch({ 
    args: ['./demo_a/electron_main.mjs', '--no-sandbox'],
    headless: true,
    env: { ...process.env, ELECTRON_DISABLE_SANDBOX: '1' },
  });

  // Evaluation expression in the Electron context.
  const appPath = await electronApp.evaluate(async ({ app }) => {
    // This runs in the main Electron process, parameter here is always
    // the result of the require('electron') in the main app script.
    //return new Promise((resolve,reject)=>{});
    return app.getAppPath();
  });
  console.log(appPath);

  // Get the first window that the app opens, wait if necessary.
  const window = await electronApp.firstWindow();
  // Print the title.
  console.log("await window.title()")
  console.log(await window.title());
  //await (new Promise((res,rej)=>{setTimeout(res,1000*3600*12)}));
  console.log("Capture a screenshot.")
  // Capture a screenshot.
  await window.screenshot({ path: 'test-results/intro1.png' });
  // Direct Electron console to Node terminal.
  window.on('console', console.log);
  // Click button.
  await window.getByRole('button').click();
  console.log("Capture a screenshot.")
  // Capture a screenshot.
  await window.screenshot({ path: 'test-results/intro2.png' });
  // Exit app.
  await electronApp.close();
});
