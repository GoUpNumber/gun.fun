# gun bet take

Take an offer to one of your [proposals](./propose.md).

## Synopsis

```
gun bet take [options] <id> <encrypted-offer>
```

## Description

`gun bet take` displays details about an offer and prompts you to take it or not.
It is up to the user to figure out what proposal this offer was in relation to.
You may use `gun bet list` to see the ids of all your proposals.

Taking the offer will prompt you to broadcast the bet transaction with the bet output.

### Security

Try to avoid taking an offer close to when an event transpires.
If the offer's fee is low the bet transaction may not be confirmed until after the event has transpired. 
A cheating offerer may then try to cancel the bet if things go against them before it confirms.

## Options

{{#include ../yes_opt.md}}
{{#include ../print_tx_opt.md}}

