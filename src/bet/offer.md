# gun bet offer

Make an offer in response to a [proposal](./propose.md).

## Synopsis 

```
gun bet offer [options] <proposal>
``` 

Without providing any options you'll be prompted for remaining details:
```
gun bet offer 0.005#h00.ooo#/random/2021-10-31T02:22:00/heads_tails.winner#۸პÂ௬ɦఅɗସઇȿჱ၄ƦফЩञǴऱλ૩ԉกƻ༓ǇЧ༃ཆɁঢӛႱ၃ಢͱธྈͰଢƿɧƶവϳॻŹဪ໖ǘØ
```

Go all in on tails and secretly communicate your confidence to the proposer

```
gun bet offer -m "bro I am so confident it tails atm" -c "tails" -v all 0.005#h00.ooo#/random/2021-10-31T02:22:00/heads_tails.winner#۸პÂ௬ɦఅɗସઇȿჱ၄ƦফЩञǴऱλ૩ԉกƻ༓ǇЧ༃ཆɁঢӛႱ၃ಢͱธྈͰଢƿɧƶവϳॻŹဪ໖ǘØ
```

## Description

`gun bet offer` generates an encrypted offer in response to a proposal.
You choose the outcome you want to bet on with `--choice` and the `--value` you are willing to risk to obtain the proposal's coins.
The offerer also pays and chooses the fee of the bet transaction with the `--fee` option.

### Security

After the proposer sees your offer they may take it at their own discretion.
This includes taking the offer **after the outcome of the bet is already known** i.e. cheating.
You must protect yourself against this by [canceling](./cancel.md) the offer before a malicious proposer can take advantage of this.


> 💡 See [GuN Safety](./gun-safety.md)

### Privacy

Your offer should be indistinguishable from random gibberish to anyone but the proposer.
This doesn't mean you have to post your offer publicly.
In practice it's better to send the proposer a direct message with your offer unless you are trying to advertise the fact that you are using `gun` for your own satisfaction.
 
### Choosing a fee

In general you should use a low fee for your offer unless you are betting very close to the event.
Proposers will generally not discriminate based on the fee and would rather you put as much value in the bet as possible.

## Options

### `-v, --value <value>`

The value you want to risk on the bet.
If you don't provide it you'll be prompted for it.
Can be:

- `all` to go "all in" with the coins in your wallet
- `match` to match whatever the proposer is risking.
- An amount and denomination like `0.01BTC` or `10000sat`

### `-c, --choice <choice>`

The outcome you want to bet on occurring.
If you don't provide it you'll be prompted for it.

### `-m, --message <message>`

Attach a message in addition to the offer.
If you are making the offer in a place with limited characters (like Twitter) the command will warn you if the message is too long.

### `-p, --pad <pad>`

Pad the ciphertext to a certain length of bytes so observes can't use the ciphertext length to determine the contents.
The default value is 385 which happens to the amount that will fit the [base2048] encoded ciphertext in a single tweet.
If you don't want padding just add `-p0`.

### `-t, --tags <tags>...`

Add human readable tags to the bet as you create it.
This is useful so you a can record a short note about where you found the proposal.

{{#include ../fee_opt.md}}
{{#include ../yes_opt.md}}

[base2048]: https://docs.rs/base2048
