# Electron Install

Electron failed to install correctly, please delete node_modules/electron and try installing again

```shell
#https://github.com/electron/electron/issues/20731#issuecomment-546616376
node node_modules/electron/install.js
```

## Testing on Headless CI Systems (Travis CI, Jenkins)

- xvfb [virtual framebuffer](https://www.electronjs.org/docs/latest/tutorial/testing-on-headless-ci)
- Disable the sandbox with --no-sandbox in electron.launch and ELECTRON_DISABLE_SANDBOX=1
    - On Linux, Electron’s sandbox may rely on a Set User ID (SUID) binary called chrome-sandbox to set up namespaces or other isolation mechanisms.
    - This binary needs root ownership and 4755 permissions, which caused the error you encountered (The SUID sandbox helper binary was found, but is not configured correctly).

