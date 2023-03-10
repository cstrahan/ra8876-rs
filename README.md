ra8876-rs
---------

This repository includes Rust crates for working with the [RA8876 LCD controller](https://www.raio.com.tw/en/RA887677.html).

### ra8876-registers

This crate provides a register access layer for the RA8876.

This is achieved by transcribing the registers (and their fields) into a YAML file from the reference manual, feeding that into [svdtools](https://github.com/stm32-rs/svdtools) to generate an SVD file, and feeding the resulting SVD file into [a fork of `svd2rust`](https://github.com/rust-embedded/svd2rust/compare/master...cstrahan:svd2rust:ra8876).

Is it a little janky? Yes, but it works!
