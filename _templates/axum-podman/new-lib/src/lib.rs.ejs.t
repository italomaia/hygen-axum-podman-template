---
to: source/crates/libs/<%= name %>/src/lib.rs
---

mod error;

pub use self::error::{Error, Result};