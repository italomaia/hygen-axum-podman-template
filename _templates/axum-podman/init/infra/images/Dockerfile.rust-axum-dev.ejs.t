---
to: infra/images/Dockerfile.rust-axum-dev
---
FROM docker.io/rust:alpine3

RUN apk add musl-dev && cargo install cargo-watch