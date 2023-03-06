#!/bin/bash
svd patch ra8876.yaml && \
  svd2rust -i ra8876.svd.patched -o src/generated && \
  rustfmt src/generated/lib.rs && \
  xmllint --format ra8876.svd.patched > ra8876.svd.patched.pretty && \
  mv ra8876.svd.patched.pretty ra8876.svd.patched
