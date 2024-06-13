use std::{borrow::Cow, path::PathBuf};

use anyhow::{anyhow, bail, Result};
use encoding_rs::{UTF_16LE, WINDOWS_1252};
use rusty_leveldb::{compressor, Options, DB};
use rusty_leveldb::compressor::CompressorId;
use serde::{Deserialize, Serialize};
use serde_json::Value;

#[derive(Clone, Debug, Deserialize, Serialize)]
pub struct Wootility {
    #[serde(rename = "_persist")]
    pub persist: Value,
    pub profiles: Value,
    #[serde(rename = "wootilityConfig")]
    pub wootility_config: Value,
}

impl Wootility {
    
    pub fn load(path: &str) -> Result<Self> {
        let mut db = DB::open(
            path,
            Options {
                compressor: compressor::SnappyCompressor::ID,
                create_if_missing: false,
                paranoid_checks: true,
                ..Default::default()
            },
        )?;

        const KEY: &[u8; 22] = b"_file://\x00\x01DDTOKEN";
        let encoded = db.get(KEY).ok_or(anyhow!("Couldn't find Wootility data"))?;
        let decoded = Self::decode_string(&encoded)?;

        Ok(serde_json::from_str(&decoded)?)
    }

    /// https://github.com/cclgroupltd/ccl_chrome_indexeddb
    pub fn decode_string(bytes: &[u8]) -> Result<Cow<'_, str>> {
        let prefix = bytes.first().ok_or(anyhow!("Invalid length"))?;
        match prefix {
            0 => Ok(UTF_16LE.decode(&bytes[1..]).0),
            1 => Ok(WINDOWS_1252.decode(&bytes[1..]).0),
            _ => bail!("Invalid prefix"),
        }
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
        let wootility = Wootility::load(path)?;
	    println!("{wootility:#?}");

    } else {
        println!("No first argument provided.");
    }

	Ok(())
}