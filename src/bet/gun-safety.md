# GuN safety

The most obvious way of losing coins in a bet is betting on the wrong thing.
But there are other more subtle and much less fun ways of losing your coins with `gun`.


## The Late Bet

A malicious party may try to get a bet transaction to be confirmed *after* the event has already transpired and has resulted in their favor.
For example, in a bet on a football match imagine if the proposer only takes the offer after the team they are betting has scored the first goal.
The offerer must protect against this by canceling their offer before the game starts. See [`gun bet cancel`](./cancel.md).

The proposer must be careful about taking offers with a low transaction fee.
If the transaction fee is low it may be stuck in the mempool until after the game starts.
The offerer may then cheat by double spending his output if it looks like the game is going against him.
Bet transactions enable *replace-by-fee* so either party can cancel it at this point by double spending one of their inputs (this is what [`gun bet cancel`](./cancel.md) does).


## Oracle cheats

The oracle may attest to the wrong outcome either maliciously or by accident.
They may also do it publicly or covertly.
There is nothing you can do about this other than call them out.
Theoretically, you can also produce proof if the oracle misbehaved but I've left this until the [Taproot version](../roadmap.md) of the protocol which allows for doing this easily.

The oracle may also just disappear.
If the oracle fails to attest the coins are stuck in the current protocol.
This will improve with taproot (see [roadmap](../roadmap)).

> 💡 The oracle [h00.ooo](https://outcome.observer/h00.ooo) which I set up for this experiment is run by me.
> I will try and be accurate and timely with my attestations but the same caveat about [Prison Island](../install.md) applies here.


## Lost data

Losing data before you've won and claimed a bet is bad.
Theoretically it's possible to recover the funds and bet but this hasn't been implemented yet.

see [backup and recovery](../backup-and-recovery.md) for more details.

