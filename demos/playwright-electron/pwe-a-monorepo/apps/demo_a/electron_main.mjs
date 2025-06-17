import { app, BrowserWindow  } from 'electron';

const createWindow = () => {
      const win = new BrowserWindow({
          width:1200,
          height:600,
      })
    win.loadFile("../build/index.html")
}


app.whenReady().then(() => {
      createWindow()
})
