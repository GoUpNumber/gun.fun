# Formatting Output

Apart from the default human readable style format any command can be modified to format its output in one of two more computer readable formats.

## JSON `-j, --json`

This format is output for reading into other software.
Coin amounts are formatted as sats and  `DateTime`s will be formatted as UNIX timestamps.

`gun -j <command> ..` will output JSON.

The following will output how much you've lost in bets

```
gun -j bet list | jq 'map(select(.state == "lost").risk) | add'

```

## Tab separated `-t, --tabs`

This format it useful for UNIX command line tools because it tab separates each field so things like `cut(1)` just work.

The following will output how much you've lost in bets

```
gun -t bet list | awk '$2 == "lost"{ lost += $5 } END { print lost }'
```



