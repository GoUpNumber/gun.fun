# gun bet propose

Propose an event to bet on and how much you are willing to risk.

## Synopsis 

```
gun bet propose [options] <value> <event-url>
```

Propose a bet where you risk 0.1 BTC on `/random/2021-08-11T04:29:00/heads_tails.winner` with oracle `h00.ooo`.

```
gun bet propose 0.1BTC https://h00.ooo/random/2021-08-11T04:29:00/heads_tails.winner
```

Go all in!

```
gun bet propose all https://h00.ooo/random/2021-08-11T04:29:00/heads_tails.winner
```

## Description

`gun` bets start with a proposal which set the oracle, event and value the *proposer* will to risk on the bet.

The oracle and the event are embedded in the `<event-url>` like `https://h00.ooo/random/2021-08-11T04:29:00/heads_tails.winner`.
Right now only `https` URLs are supported.
The oracle for the bet is the host of the URL e.g. `h00.ooo`.
In order to discover an oracle and event to bet on you can use an oracle explorer like [outcome.observer](https://outcome.observer).
Note carefully that **you can only bet on events with two outcomes**.

`<value>` can either a specific quantity of Bitcoin with denomination or `all` to bet all available coins in the wallet.

The command will output the proposal as a `#` delimited string with the binary data encoded with `base2048`.

The binary data includes the on-chain input the proposer is using for the bet.
These are unencrypted and viewable by anyone.
Therefore, **if you are posting the proposal publicly you must first ask yourself whether you really want these on-chain inputs to be linked to the identity that posts the proposal**.

### Change

Currently it is possible to include a change output in the proposal where your excess over the value you want to bet will go.
While the proposal is active these coins will be reserved for the bet and `in-use`.
It is a good idea to use [`gun split`](../wallet/split.md) to create an output with the exact amount of coins you want to risk as a proposer to avoid this.
For technical reasons in the future change outputs for the proposer may be removed so you should get used to doing this now!

## Options

### `-t, --tags <tags>...`

Add human readable tag to the bet as you create it.

### `-y, --yes`

Don't prompt me just answer "yes" to whatever questions are asked.
