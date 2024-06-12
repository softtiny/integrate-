use rusty_leveldb::{DB, DBIterator, LdbIterator, Options};

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

            let mut db = DB::open(path,rusty_leveldb::Options::default()).unwrap();
            let iter = db.new_iter().unwrap();
            for (key, value) in iter {
                match (key, value) {
                    (Some(k), Some(v)) => {
                        println!("Key: {:?}, Value: {:?}", k, v);
                    }
                    _ => {
                        println!("Error reading key-value pair.");
                    }
                }
            }
        }
    } else {
        println!("No first argument provided.");
    }
}
