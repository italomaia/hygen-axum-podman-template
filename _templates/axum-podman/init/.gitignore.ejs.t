---
to: .gitignore
unless_exists: true
---
# -- Base
.*
!.gitignore

*.lock
*.lockb
*.log

# -- Rust
target/
# !Cargo.lock # Commented by default
!.cargo/

# -- Python
*.pyc