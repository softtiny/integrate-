use rusty_leveldb::{compressor, CompressorId, DB, DBIterator, LdbIterator, Options};
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

            let mut opt = Options::default();
            opt.reuse_logs = false;
            opt.reuse_manifest = false;
            opt.compressor = compressor::SnappyCompressor::ID;
            let mut db = DB::open(path, opt).unwrap();
            match db.get(b"my key") {
                Some(value) => println!("retrieved value {}", String::from_utf8(value).unwrap()),
                None => println!("value not found"),
             }
             match db.get(b"POSSIGNDATA") {
                Some(value) => println!("POSSIGNDATA : {}", String::from_utf8(value).unwrap()),
                None => println!("POSSIGNDATA value not found"),
             }
             match db.get(b"PERMISIONOCDE") {
                 Some(value) => println!("PERMISIONOCDE : {}", String::from_utf8(value).unwrap()),
                 None => println!("PERMISIONOCDE value not found"),
             }
             match db.get(b"LOCALSERVERURL") {
                 Some(value) => println!("LOCALSERVERURL : {}", String::from_utf8(value).unwrap()),
                 None => println!("LOCALSERVERURL value not found"),
             } 
        }
    } else {
        println!("No first argument provided.");
    }
}
