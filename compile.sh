#!/bin/bash

./node_modules/gitbook-cli/bin/gitbook.js build
./node_modules/gitbook-cli/bin/gitbook.js pdf
cp -r _book/* out/
cp book.pdf out/latest.pdf
