#!/bin/sh
set -e
cd demos/playwright-electron/pwe-a-monorepo/apps/pwe-a
pwd

sudo apt install -y imagemagick

#rm -fr node_modules
# node node_modules/electron/install.js
# sudo chown root:root ../../node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
# sudo chmod 4755  ../../node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
#https://github.com/electron/electron/issues/20731 The path.txt is missing.
rm -fr node_modules
pnpm install --ignore-workspace
node node_modules/electron/install.js
sudo chown root:root node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
sudo chmod 4755  node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox
#node_modules/.bin/electron || (pwd && ls /home/runner/work/integrate-/integrate-/demos/playwright-electron/pwe-a-monorepo/node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox && sudo chown root:root node_modules/.pnpm/electron@36.5.0/node_modules/electron/dist/chrome-sandbox  )

pnpm exec playwright test --list example.spec.ts
echo ".........................................................................."
echo $DISPLAY
echo ".........................................................................."
pnpm exec electron "--inspect=0" "--remote-debugging-port=0" "./demo_a/electron_main.mjs" & ( sleep 10 && xwd -root -display :99 -silent -out screenshot.xwd && ls && exit)
#pnpm exec playwright test example.spec.ts #--reporter json