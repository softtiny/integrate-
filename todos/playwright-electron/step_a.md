# Playwright and Electron

## A plan

```mermaid
---
title: SimpleRun
---
flowchart LR
    id1[Electron Project]
    id2[Playwirhgt Project]
    id3[run and take screenshot]
    id4[github action]
    id1 --> id2 --> id3 --> id4
```

### Electron Project

```shell
pnpm init
pnpm install electron
# when Electron failed to install correctly, please delete node_modules/electron and try installing again
node node_modules/electron/install.js
```