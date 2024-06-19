use tauri::{Manager};


#[derive(Clone, serde::Serialize)]
struct Payload {
  args: Vec<String>,
  cwd: String,
}

// Prevents additional console window on Windows in release, DO NOT REMOVE!!
#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]
fn main() {
  let app = tauri::Builder::default()
    .plugin(tauri_plugin_log::Builder::default().build())
    .plugin(tauri_plugin_single_instance::init(|app, argv, cwd| {
      println!("{}, {argv:?}, {cwd}", app.package_info().name);
      app.emit_all("single-instance", Payload { args: argv, cwd }).unwrap();
    }))
    .build(tauri::generate_context!())
    .expect("error while running tauri application");
  app.run(|_app_handle, event| match event {
      tauri::RunEvent::Updater(updater_event) => {
        match updater_event {
          tauri::UpdaterEvent::UpdateAvailable { body, date, version } => {
            println!("update available {} {:?} {}", body, date, version);
          }
          // Emitted when the download is about to be started.
          tauri::UpdaterEvent::Pending => {
            println!("update is pending!");
          }
          tauri::UpdaterEvent::DownloadProgress { chunk_length, content_length } => {
            println!("downloaded {} of {:?}", chunk_length, content_length);
          }
          // Emitted when the download has finished and the update is about to be installed.
          tauri::UpdaterEvent::Downloaded => {
            println!("update has been downloaded!");
          }
          // Emitted when the update was installed. You can then ask to restart the app.
          tauri::UpdaterEvent::Updated => {
            println!("app has been updated");
          }
          // Emitted when the app already has the latest version installed and an update is not needed.
          tauri::UpdaterEvent::AlreadyUpToDate => {
            println!("app is already up to date");
          }
          // Emitted when there is an error with the updater. We suggest to listen to this event even if the default dialog is enabled.
          tauri::UpdaterEvent::Error(error) => {
            println!("failed to update: {}", error);
          }
          _ => (),
        }
      }
      _ => {}
    });
  
}
