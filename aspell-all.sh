#!/bin/sh
set -e
find . -name '*.md' -exec aspell --master=en_US --personal ./.aspell.en.pws -c {} \;
