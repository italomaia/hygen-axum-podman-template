---
to: source/crates/services/example/Cargo.toml
---
[package]
name = "example"
version = "0.1.0"
edition = "2021"

[dependencies]
# -- Async
tokio = { version = "1", features = ["full"] }

# -- Web
axum = {version = "0.7", features = ["macros"]}

# -- Tracing
tracing = "0.1"
tracing-subscriber = { version = "0.3", features = ["env-filter"] }

# -- Other
derive_more = { workspace = true }

[lints]
workspace = true
