#!/bin/bash

SVD2RUST=/home/cstrahan/src/svd2rust/target/debug/svd2rust
#SVD2RUST=svd2rust

svd patch ra8876.yaml && \
  $SVD2RUST -i ra8876.svd.patched -o src && \
  rm -v src/{build.rs,device.x} && \
  rustfmt src/lib.rs && \
  xmllint --format ra8876.svd.patched > ra8876.svd.patched.pretty && \
  mv ra8876.svd.patched.pretty ra8876.svd.patched
