# gun split

Split some coins into several outputs.
This is useful because it is desirable to have evenly sized outputs when making [bet proposals](./bet/proposal.md).


```
gun split [OPTIONS] <output-size> [n]
```

## Synopsis

Create 5 outputs of 0.05 BTC each.
```
gun split 0.05BTC 5
```
Create as many 0.05 BTC outputs as possible with all the funds in the wallet.
```
gun split 0.05BTC
```

## Options


{{#include ../fee_opt.md}}
{{#include ../print_tx_opt.md}}
{{#include ../spend_opts.md}}
{{#include ../yes_opt.md}}
