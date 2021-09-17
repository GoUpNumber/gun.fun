# gun bet cancel

Cancel a bet by broadcasting a double spending transaction.

## Synopsis

```
gun bet cancel [options] [bet-ids]...
```

## Description

To fully cancel a bet you double spend one of your declared inputs to the bet.
Either the offerer or the proposer can cancel a bet before it has been confirmed.

On the proposer's side cancelling is just good etiquette.
By cancelling the proposal everyone who has made an offer doesn't have to make a transaction cancelling their offer.
If a proposer is sure that no one will make an offer to a proposal they can instead [forget](./forget.md) about it.

An offerer must cancel any offer they've made that hasn't been taken (or canceled) prior to the outcome time.

> 💡 See [security](./betting.md#security)

## Options

{{#include ../print_tx_opt.md}}
{{#include ../yes_opt.md}}
{{#include ../fee_opt.md }}
