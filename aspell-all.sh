#!/bin/sh
set -e
find . -name '*.md' -exec aspell --personal ./.aspell.en.pws -c {} \;
