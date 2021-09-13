# gun bet offer

Make an offer in response to a [proposal](./propose.md).

## Synopsis 

```
gun bet offer [options] <value> <choice> <proposal>
``` 

Bet on heads with even odds given the proposal

```
gun bet offer 0.01BTC heads 0.01#h00.ooo#/random/2021-09-09T08:14:00/heads_tails.winner#ഩǠɢѩչਠനՎȆଞગਐעͻڢѓӫҹڣလߛϊرКɏҵฤຂΘݸլၷ࿋னЉඇໜЈবɇοȾಋѻݙȁ࿅ผɱƂइŏǱێեЯಐۇฝဆসϑ࿖ɀჵਊၒβԼјஊڠၮɈ།
```

Go all in on tails and secretly communicate your confidence to the proposer

```
gun bet offer -m "bro I am so confident it tails atm" all tails  0.01#h00.ooo#/random/2021-09-09T08:14:00/heads_tails.winner#ഩǠɢѩչਠനՎȆଞગਐעͻڢѓӫҹڣလߛϊرКɏҵฤຂΘݸլၷ࿋னЉඇໜЈবɇοȾಋѻݙȁ࿅ผɱƂइŏǱێեЯಐۇฝဆসϑ࿖ɀჵਊၒβԼјஊڠၮɈ།
```

## Description

`gun bet offer` generates an encrypted offer in response to a proposal.
You choose the outcome you want to bet on (`<choice>`) and the `<value>` you are willing to risk to obtain the proposal's coins.
The offerer also pays and chooses the fee of the bet transaction with the `--fee`.

What value of `<choice>` is acceptable can be determined from the event-url.
Here are some examples of how this works:

- `red_blue.winner` has `red` and `blue` as possible outcomes.
- `red_blue.vs` has the outcomes `red_win`, `blue_win` and `draw`. Because it has three outcomes you can't use `gun` to bet on it.
- `red_blue.vs=red_win` is a predicated version of above asserting that `red` will win and has the outcomes `true` (when `red` wins) or `false` (when `blue` wins or there was a `draw`).


You don't have to worry too much about this, if you put an incorrect value in `gun` will tell you what the available options are.

### Security

After the proposer sees your offer they may take it at their own discretion.
This includes taking the offer **after the outcome of the bet is already known** i.e. cheating.
You must protect yourself against this by [canceling](./cancel.md) the offer before a malicious proposer can take advantage of this.

### Choosing a fee

In general you should use a low fee for your offer.
Proposers will generally not discriminate based on the fee and would rather you put as much value in the bet as possible.
As long as the fee is high enough so the proposer is confident it will confirm before the event transpires it shouldn't matter.


## Options


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
