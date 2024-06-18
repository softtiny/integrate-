

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

def electron_leveldb_migrate [] {
    echo "leveldb-rs: called `Result::unwrap()` on an `Err` value: Status { code: Corruption, err: 'Corruption: no meta-lognumber entry in descriptor' }"
    echo "the folder is dirty. replace by source. okkkkk"
    echo "testing"
}

def main [] {
    echo "Build an optimized, secure, and frontend-independent application for multi-platform deployment."
}