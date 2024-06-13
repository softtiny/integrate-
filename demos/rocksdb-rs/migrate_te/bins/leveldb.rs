use std::{borrow::Cow, path::PathBuf};

use anyhow::{anyhow, bail, Result};
use encoding_rs::{UTF_16LE, WINDOWS_1252};
use rusty_leveldb::{compressor, Options, DB};
use rusty_leveldb::compressor::CompressorId;


fn decode_string(bytes: &[u8]) -> Result<Cow<'_, str>> {
    let prefix = bytes.first().ok_or(anyhow!("Invalid length"))?;
    match prefix {
        0 => Ok(UTF_16LE.decode(&bytes[1..]).0),
        1 => Ok(WINDOWS_1252.decode(&bytes[1..]).0),
        _ => bail!("Invalid prefix"),
    }
}

fn main() -> Result<()> {
	
    let mut args = std::env::args();
	 // Skip the first argument which is the program's name
	let _ = args.next();
	// Check if there is a first argument and print it
    if let Some(pathS) = args.next() {
        println!("First argument: {}", pathS);
		let path = &pathS;
        let mut db = DB::open(
            path,
            Options {
                compressor: compressor::SnappyCompressor::ID,
                create_if_missing: false,
                paranoid_checks: true,
                ..Default::default()
            },
        )?;
        const KEY: &[u8; 17] = b"_file://\x00\x01DDTOKEN";
        let encoded = db.get(KEY).ok_or(anyhow!("Couldn't find DDTOKEN data"))?;
        let decoded = decode_string(&encoded)?;
        println!("{:?}",decoded);
        const KEY2: &[u8; 20] = b"_file://\x00\x01DEVICEINFO";
        let encoded = db.get(KEY2.ok_or(anyhow!("Couldn't find DEVICEINFO data"))?;
        let decoded = decode_string(&encoded)?;
        println!("{:?}",decoded);
    } else {
        println!("No first argument provided.");
    }

	Ok(())
}