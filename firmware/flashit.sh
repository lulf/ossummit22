#!/bin/bash
probe-rs-cli erase --chip nRF52833_xxAA
cargo flash --manifest-path bootloader/Cargo.toml --release --chip nRF52833_xxAA
probe-rs-cli download s113_nrf52_7.3.0_softdevice.hex --chip nRF52833_xxAA --format Hex
cargo flash --manifest-path application/Cargo.toml --release --chip nRF52833_xxAA
