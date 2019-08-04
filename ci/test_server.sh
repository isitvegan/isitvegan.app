#!/usr/bin/env bash

set -e

cargo build --all-features --verbose $CARGO_OPTIONS 
cargo test --all-features --verbose $CARGO_OPTIONS
./coverage.sh
cargo clippy --all-features --tests -- -Dwarnings
cargo fmt --all -- --check
cargo doc --no-deps
