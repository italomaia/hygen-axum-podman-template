---
to: infra/images/Dockerfile.rust-axum-prd
---
FROM docker.io/rust:alpine3 AS build

# bin crate name
ARG NAME

WORKDIR /code
COPY ./source /code
RUN cargo build --release --bin ${NAME}

# we don't need the rust toolchain to run the binary
FROM docker.io/alpine:3
COPY --from=build /code/target/release/${NAME} /usr/bin/service
USER nobody