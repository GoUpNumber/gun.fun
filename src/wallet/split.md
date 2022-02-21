# gun split

Split some coins into several outputs.
This is useful when you want to have evenly sized outputs for making [bet proposals](./bet/proposal.md).


```
gun split [OPTIONS] <output-size> <n>
```

## Synopsis

Create 5 outputs of 0.05 BTC each.

```
gun split 0.05BTC 5
```

## Options


{{#include ../fee_opt.md}}
{{#include ../print_tx_opt.md}}
{{#include ../spend_opts.md}}
{{#include ../yes_opt.md}}
