#!/bin/bash

./node_modules/gitbook-cli/bin/gitbook.js build
xvfb-run ./node_modules/gitbook-cli/bin/gitbook.js pdf
cp -r _book/* out/
cp book.pdf out/latest.pdf
