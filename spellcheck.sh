#!/usr/bin/sh
set -e

aspell --version > /dev/null

# I don't know why spelling has to be so fucking hard for fucks stakes rreeeee
files=${@:-$(find . -name '*.md')}


for file in $files; do
    output=$(aspell --personal ./.aspell.en.pws list -M < "$file");
    if test "$output"; then
        echo "There is problems in $file:" >&2;
        echo "$output" >&2;
        exit 1;
    fi
done

exit 0
