#!/bin/bash

./node_modules/gitbook-cli/bin/gitbook.js build
cp -r _build/* out/*
