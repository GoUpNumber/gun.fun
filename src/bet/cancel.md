# gun bet cancel

Cancel a bet.

## Synopsis

```
gun bet cancel [options] [bet-ids]...
```

## Description

Either the offerer or the proposer can cancel a bet before it has been confirmed.
On the proposer's side cancelling is just good etiquette.
By cancelling the proposal everyone who has made an offer doesn't have to make a transaction cancelling their offer.

On the offerer's side cancelling is necessary for any offer that the proposer hasn't cancelled before the event is going to transpire.

## Options

{{#include ../print_tx_opt.md}}
{{#include ../yes_opt.md}}
{{#include ../fee_opt.md }}
