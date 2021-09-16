# gun bet list

List bets.


## Synopsis

List your bets

```
gun bet list
```

Check and update your bets online and on-chain to see if if anything has changed first:

```
gun -s bet list
```

## Description

The list of bets has the following fields:

- `state`: The state the bet is, which can be:
  - `proposed`: You've proposed this bet.
  - `offered`: You've made an offer on this bet.
  - `unconfirmed`: The bet transaction has be broadcast but hasn't been confirmed.
  - `confirmed`: The bet transaction has been confirmed.
  - `won`: You've won the bet (but haven't claimed the winnings).
  - `lost`: You lost! You get nothing.
  - `claiming`: You've started claiming a won bet.
  - `claimed`: You've claimed the winnings successfully.
  - `cancelled`: This bet was cancelled before confirming either (it could have been cancelled by you or your counterparty)
- `outcome-time`: When the oracle expects the outcome to be known
- `in`: the duration between now and `outcome-time` in short human readable form.
- `risk`: How much BTC you stand to lose in this bet.
- `reward`: How much BTC you stand to gain.
- `tags`: human readable strings you can attach to a bet with [`gun bet tag`](./bet/tag.md)
- `oracle`: The oracle for the bet.
- `i-bet`: which outcome you bet on.
- `short-id`: the end of the `event-id` of the bet.

