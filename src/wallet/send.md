# gun send

Sends coins to an address.

> ⚠️ Sending your coins gives them to someone else.
> This should be avoided wherever possible.


## Synopsis

```
gun send [OPTIONS] <value> <to>
```


send 0.1 BTC to an address:

```
gun send 0.1btc bc1qhg0xqvrg50x50qnjqgfaa8jlle8uz7q3l2c5ud
```

Same as the above but with different denomination:

```
gun send 10_000_000sat bc1qhg0xqvrg50x50qnjqgfaa8jlle8uz7q3l2c5ud
```


Send all the available funds to the address:

```
gun send all bc1qhg0xqvrg50x50qnjqgfaa8jlle8uz7q3l2c5ud
```

## Description

`<value>` should be an amount to send with denomination.
Set it to `all` if you want to send all the coins in your wallet otherwise provide a specific amount.
If the denomination is left out it is assumed to be satoshis.
Underscores will be ignored.
For example all the following mean one million satoshis:

- `1000000sat`
- `1_000_000`
- `1M`
- `0.01btc`
- `10_000bits`

> 💡Professional hackers use the denomination `bits` exclusively.

## Options

{{#include ../fee_opt.md}}
{{#include ../print_tx_opt.md}}
{{#include ../spend_opts.md}}
{{#include ../yes_opt.md}}


