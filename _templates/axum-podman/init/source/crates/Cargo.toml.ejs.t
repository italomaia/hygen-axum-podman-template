---
to: source/crates/Cargo.toml
---
[workspace.lints.rust]
unsafe_code = "forbid"
# unused = "allow" # For experimental dev

[workspace]
resolver = "2"
members = [
    # libs - shared crates used by services, cron & tools
    # "crates/libs/something",
    
    # services - long running integrated processes
    # "crates/services/something",

    # scheduled - scheduled processes (aka: cron)
    # "crates/scheduled/something",
    
    # tools - short running processes
    # "crates/tools/something",
]

[workspace.dependencies]
# crates shared by multiple members
derive_more = { version = "1.0.0", features = ["from", "display"] }
