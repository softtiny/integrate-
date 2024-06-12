use rocksdb::{DB, Options};



fn main() {
    println!("Hello, world!");
    // NB: db is automatically closed at end of lifetime
	// let path = "_path_for_rocksdb_storage";
	 // Get the command line arguments iterator
	let mut args = std::env::args();
	 // Skip the first argument which is the program's name
	let _ = args.next();
	// Check if there is a first argument and print it
    if let Some(pathS) = args.next() {
        println!("First argument: {}", pathS);
		let path = &pathS;
		{
			
			let db = DB::open_default(path).unwrap();
			db.put(b"my key", b"my value").unwrap();
			match db.get(b"my key") {
			   Ok(Some(value)) => println!("retrieved value {}", String::from_utf8(value).unwrap()),
			   Ok(None) => println!("value not found"),
			   Err(e) => println!("operational problem encountered: {}", e),
			}
			match db.get(b"POSSIGNDATA") {
			  Ok(Some(value)) => println!("POSSIGNDATA : {}", String::from_utf8(value).unwrap()),
			   Ok(None) => println!("POSSIGNDATA value not found"),
			   Err(e) => println!("operational problem encountered: {}", e),
			}
			match db.get(b"PERMISIONOCDE") {
				Ok(Some(value)) => println!("PERMISIONOCDE : {}", String::from_utf8(value).unwrap()),
				Ok(None) => println!("PERMISIONOCDE value not found"),
				Err(e) => println!("operational problem encountered: {}", e),
			}
			match db.get(b"LOCALSERVERURL") {
				Ok(Some(value)) => println!("LOCALSERVERURL : {}", String::from_utf8(value).unwrap()),
				Ok(None) => println!("LOCALSERVERURL value not found"),
				Err(e) => println!("operational problem encountered: {}", e),
			}
			//db.delete(b"my key").unwrap();
		}
		//let _ = DB::destroy(&Options::default(), path);
    } else {
        println!("No first argument provided.");
    }
}
