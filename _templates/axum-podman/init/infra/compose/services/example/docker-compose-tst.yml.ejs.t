---
to: infra/compose/services/example/docker-compose-tst.yml
---
# test compose file; override defaults with un/safe values to facilitate development

services:
  example:
    command: cargo watch -q -c -w /code/crates/services -w /code/crates/libs -x "test --bin=example"
    environment:
      - RUST_LOG=warn
    volumes:
      - ../../../../source:/code