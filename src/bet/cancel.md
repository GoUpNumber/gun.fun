# gun bet cancel

Cancel a bet by broadcasting a double spending transaction.

## Synopsis

```
gun bet cancel [options] [bet-ids]...
```

## Description

To fully cancel a bet you double spend one of your declared inputs to the bet.
Either the offerer or the proposer can cancel a bet before it has been confirmed.

On the proposer's side canceling is just good etiquette.
By canceling the proposal everyone who has made an offer doesn't have to make a transaction canceling their offer.
If a proposer is sure that no one will make an offer to a proposal they can instead [forget](./forget.md) about it.

An offerer must cancel any offer they've made that hasn't been taken (or canceled) prior to the outcome time.

To cancel a bet it must be in the `proposed`, `offered` or `canceling` state.
You can cancel many bets at the same time.
If one of the bets being canceled is in the `canceling` state you must make sure that the feerate set by `--fee` is higher than the previous canceling transaction's fee.

> 💡 See [GuN Safety](./gun-safety.md)

## Options

{{#include ../print_tx_opt.md}}
{{#include ../yes_opt.md}}
{{#include ../fee_opt.md }}
