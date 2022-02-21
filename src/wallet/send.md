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
gun send 0.1BTC bc1qhg0xqvrg50x50qnjqgfaa8jlle8uz7q3l2c5ud
```

Same as the above but with different denomination:

```
gun send 10000000sat bc1qhg0xqvrg50x50qnjqgfaa8jlle8uz7q3l2c5ud
```


Send all the available funds to the address:

```
gun send all bc1qhg0xqvrg50x50qnjqgfaa8jlle8uz7q3l2c5ud
```

## Options

{{#include ../fee_opt.md}}
{{#include ../print_tx_opt.md}}
{{#include ../spend_opts.md}}
{{#include ../yes_opt.md}}


