# Cargo, clippy and rustfmt for ./test.sh, matching rust-toolchain.toml.
ARG RUST_IMAGE=rust:1.99.1-bookworm@sha256:e6f2cff35d0f309acf8433b4f05878ed77092602c5065cc81801177da0bb3a9c
FROM ${RUST_IMAGE}
RUN rustup component add clippy rustfmt
# A toolchain mismatch fails fast.
ENV RUSTUP_AUTO_INSTALL=0
