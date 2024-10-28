FROM rust:alpine

RUN apk update && \
    apk add --no-cache bash curl npm libc-dev binaryen

# RUN curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

# RUN cargo binstall cargo-leptos -y

RUN rustup update
RUN rustup target add wasm32-unknown-unknown
RUN cargo install cargo-leptos
