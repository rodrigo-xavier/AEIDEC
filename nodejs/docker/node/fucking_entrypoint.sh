#!/bin/sh

echo "Is passing through the fucking entrypoint"

npm ls --depth 0

nodemon -L index.js