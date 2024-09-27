---
to: infra/compose/services/docker-compose-dev.yml
---
# development compose file; override defaults with un/safe values to facilitate development

services:
  example:
    command: cargo watch -q -c -w /code/crates -x "run --bin=example"
    image: localhost/rust-axum-dev
    environment:
      - RUST_LOG=debug
    working_dir: /code
    volumes:
      - ../../../../source:/code