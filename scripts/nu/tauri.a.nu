# rust debu
#RUST_BACKTRACE=1

def tauri2_0 {
    echo "While Tauri 2.0 is still in the prerelease stage people follow these guidelines for writing documentation:"
    echo "name: tauri v2.0.0-beta.21"
    echo "published_at: 2024-05-29T03:38:21Z"
}
def tauri1_x{
    #Build an optimized, secure, and frontend-independent application for multi-platform deployment.
    #cargo
    cargo install create-tauri-app --locked
    cargo create-tauri-app

    #pnpm
    pnpm create tauri-app
}

def tauri_nextjs{
    #Static-Site Generation (SSG) capabilities. To make Next.js work with Tauri we are going to use the SSG mode since it generates only static files that can be included in the final binary.

    #Install Tauri CLI
    pnpm add -D @tauri-apps/cli
    #or
    cargo install tauri-cli

    #is pre-configured to use Tauri, open a terminal and run the following command:
    pnpm tauri init
    #or
    cargo tauri init

}

#Using JavaScript Library
def tauri_api [] {
    npm install @tauri-apps/api
    pnpm add @tauri-apps/api
}

#Running Your App
def tauri_run [] {
    npm run tauri dev
    pnpm tauri dev
    cargo tauri dev
}

#Using the Inspector in Production
def tarui_build_debug [] {
    cargo tauri build --debug
    pnpm tauri build --debug
    #Enable Devtools Feature
    #src-tauri/Cargo.toml
    echo '[dependencies]
tauri = { version = "...", features = ["...", "devtools"] }'

    #Debugging the Core Proces
    #The Core process is powered by Rust so you can use GDB or LLDB to debug it. 


    pnpm tauri build --help                                                                     2 ⨯
    echo "Tauri build

Usage: node node_modules/@tauri-apps/cli/tauri.js build [OPTIONS] [ARGS]...

Arguments:
  [ARGS]...
          Command line arguments passed to the runner. Use `--` to explicitly mark the start of the arguments

Options:
  -r, --runner <RUNNER>
          Binary to use to build the application, defaults to `cargo`

  -v, --verbose...
          Enables verbose logging

  -d, --debug
          Builds with the debug flag

  -t, --target <TARGET>
          Target triple to build against.

          It must be one of the values outputted by `$rustc --print target-list` or `universal-apple-darwin` for an universal macOS application.

          Note that compiling an universal macOS application requires both `aarch64-apple-darwin` and `x86_64-apple-darwin` targets to be installed.

  -f, --features [<FEATURES>...]
          Space or comma separated list of features to activate

  -b, --bundles [<BUNDLES>...]
          Space or comma separated list of bundles to package.

          Each bundle must be one of `deb`, `appimage`, `msi`, `app` or `dmg` on MacOS and `updater` on all platforms. If `none` is specified, the bundler will be skipped.

          Note that the `updater` bundle is not automatically added so you must specify it if the updater is enabled.

  -c, --config <CONFIG>
          JSON string or path to JSON file to merge with tauri.conf.json

      --ci
          Skip prompting for values

  -h, --help
          Print help (see a summary with '-h')

  -V, --version
          Print version"

}
def tarui_update_zip_extract_into [] {
    unzip -lv xx.zip
    echo "
Archive:  cmd1.zip
 Length   Method    Size  Cmpr    Date    Time   CRC-32   Name
--------  ------  ------- ---- ---------- ----- --------  ----
      28  Stored       28   0% 2024-06-19 10:31 91f78c8f  xx.zip
--------          -------  ---                            -------
      28               28   0%                            1 file

    "
    echo "look the method Stored"

    7z a -mx=0 abc.zip abc
    zip -0 abc.zip abc
}

def tarui_sign_update [] {
    pnpm tauri signer generate --help
    echo "Generate keypair to sign files

Usage: node node_modules/@tauri-apps/cli/tauri.js signer generate [OPTIONS]

Options:
  -p, --password <PASSWORD>      Set private key password when signing
  -v, --verbose...               Enables verbose logging
  -w, --write-keys <WRITE_KEYS>  Write private key to a file
  -f, --force                    Overwrite private key even if it exists on the specified path
      --ci                       Skip prompting for values
  -h, --help                     Print help
  -V, --version                  Print version"
  cat no.password.key.pub
  "dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IDgzNTYyNzg2N0U4M0MyRjQKUldUMHdvTitoaWRXZzVkMjFCVlg2bUVKMkRjUmMvQVhTVlRBSTh5OVBKVytnOGVWK3hoeHFQN2kK"
  cat no.password.key
  "dW50cnVzdGVkIGNvbW1lbnQ6IHJzaWduIGVuY3J5cHRlZCBzZWNyZXQga2V5ClJXUlRZMEl5YmRLNjVmQzlWTU4vNDBmN2FsaVQ2OVJsNjBPNkVWZ3hrbXBPTGtueTgwQUFBQkFBQUFBQUFBQUFBQUlBQUFBQXJFRURPUW1mbG9zZ29zRXNFbXhwTkNieEovZzA5azNSakdKNktaZnB4K0RLSzMxclVHMW0ra2tIOXFWUWh2SmJBN2JhdzZtb2hlc25lQ1JFY0ozWW84MUNSVnNVeHlXS2dnV01NVDJUdFlzT0xEYzFrMVlpajdXczJIS28ybjJ5VVMzOWdnbU5qSXM9Cg=="

  pnpm tauri signer sign -k dW50cnVzdGVkIGNvbW1lbnQ6IHJzaWduIGVuY3J5cHRlZCBzZWNyZXQga2V5ClJXUlRZMEl5YmRLNjVmQzlWTU4vNDBmN2FsaVQ2OVJsNjBPNkVWZ3hrbXBPTGtueTgwQUFBQkFBQUFBQUFBQUFBQUlBQUFBQXJFRURPUW1mbG9zZ29zRXNFbXhwTkNieEovZzA5azNSakdKNktaZnB4K0RLSzMxclVHMW0ra2tIOXFWUWh2SmJBN2JhdzZtb2hlc25lQ1JFY0ozWW84MUNSVnNVeHlXS2dnV01NVDJUdFlzT0xEYzFrMVlpajdXczJIS28ybjJ5VVMzOWdnbU5qSXM9Cg== -v xxx.exe
}

def tarui_runtime_info [] {
    echo "C:\Program Files (x86)\Microsoft\EdgeWebView\Application\121.0.2277.112\msedgewebview2.exe" --embedded-browser-webview=1 --webview-exe-name=next_20240607.exe --webview-exe-version=0.1.0 --user-data-dir="C:\Users\xxx\AppData\Local\com.tips.pay\EBWebView" --noerrdialogs --embedded-browser-webview-dpi-awareness=2 --disable-features=msWebOOUI,msPdfOOUI,msSmartScreenProtection --enable-features=MojoIpcz --lang=en-US --accept-lang=en-US --mojo-named-platform-channel-pipe=7624.9732.8868706037916860524
    echo "local storage:location"
    echo "C:\Users\xxx\AppData\Local\com.tips.pay\EBWebView\Default\Local Storage"
}

def tarui_test_run [] {
   echo 'let app = tauri::Builder::default()
  // on an actual app, remove the string argument
  .build(tauri::generate_context!("test/fixture/src-tauri/tauri.conf.json"))
  .expect("error while building tauri application");'
}

def electron_leveldb_migrate [] {
    echo "leveldb-rs: called `Result::unwrap()` on an `Err` value: Status { code: Corruption, err: 'Corruption: no meta-lognumber entry in descriptor' }"
    echo "the folder is dirty. replace by source. okkkkk"
    echo "testing"
}

def main [] {
    echo "Build an optimized, secure, and frontend-independent application for multi-platform deployment."
}