# Cargo, clippy and rustfmt for ./test.sh, matching rust-toolchain.toml.
ARG RUST_IMAGE=rust:1.100.0-bookworm@sha256:ade39a710ef85f3506cffcfec3e8a24ba090badef1dff2fb798f71d878833fea
FROM ${RUST_IMAGE}
RUN rustup component add clippy rustfmt
# A toolchain mismatch fails fast.
ENV RUSTUP_AUTO_INSTALL=0
