---
to: source/crates/libs/<%= name %>/Cargo.toml
---

[package]
name = "lib-<%= name %>"
version = "0.1.0"
edition = "2021"

[dependencies]
# -- Other
derive_more = { workspace = true }

[lints]
workspace = true
