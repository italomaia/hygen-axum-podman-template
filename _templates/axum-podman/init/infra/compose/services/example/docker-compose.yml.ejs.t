---
to: infra/compose/services/example/docker-compose.yml
---
# production compose file; set safe options by default; variables should be filled from the environment/vault

services:
  example:
    command: /usr/bin/service
    image: localhost/rust-axum-prd
    environment:
      - RUST_LOG=error
    ports:
      - 8080:8080