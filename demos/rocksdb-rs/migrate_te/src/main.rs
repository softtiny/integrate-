use rocksdb::{DB, Options};

fn main() {
    println!("Hello, world!");
    // NB: db is automatically closed at end of lifetime
	// let path = "_path_for_rocksdb_storage";
	let path = option_env!("SECRET_KEY").unwrap();
	{
		let db = DB::open_default(path).unwrap();
		db.put(b"my key", b"my value").unwrap();
		match db.get(b"my key") {
		   Ok(Some(value)) => println!("retrieved value {}", String::from_utf8(value).unwrap()),
		   Ok(None) => println!("value not found"),
		   Err(e) => println!("operational problem encountered: {}", e),
		}
		db.delete(b"my key").unwrap();
	}
	let _ = DB::destroy(&Options::default(), path);
}
