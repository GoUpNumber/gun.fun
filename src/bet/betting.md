# GuN Betting

The main reason I developed `gun` was to be able to experiment with Bitcoin betting through social media and messaging apps.
I originally wrote down the idea in *[How to Make a Prediction Market on Twitter with Bitcoin]*.
At a high level this is how it works:

1. The first person *proposes* a bet by choosing an event to bet on (including the oracle to use) and value to risk.
   The proposal data also contains the inputs they will use to fund the bet. See [`gun bet propose`](./propose.md).
2. Anyone who sees the proposal may make an *offer* in response by choosing how much they will risk in return and which outcome they want to bet on. See [`gun bet offer`](./offer.md).
   The offer is fully encrypted and can only be decrypted by the proposer.
   In fact, it might not be an offer at all since you instead can use [`gun bet reply`](./reply.md) to send an encrypted message which will be indistinguishable from an encrypted offer.
3. The proposer decrypts any offer they get and if they want to take the other side of the bet they broadcast the bet funding transaction.
   They may only choose one offer. See [`gun bet take`](./take.md).
4. When the oracle publishes the outcome the winning party gains ownership of the coins.
   When they're ready they can move the coins into their main wallet. See [`gun bet claim`](./claim.md).
   
## Oracles

For this experiment I developed an oracle called [`olivia`](https://github.com/LLFourn/olivia) and deployed it at [h00.ooo](https://h00.ooo).
`olivia` is badly documented and still changing a lot but you're welcome to try and run your own one.

To find events I developed a simple oracle explorer [outcome.observer](https://outcome.observer) which can browse the events of an oracle.

## Protcol Details

The proposal contains a public key which the offerer will use to encrypt their offer.
The offer contains a public key followed by a ciphertext.
The ciphertext is encrypted by deriving a key from the Diffie-Hellman key between the two public keys.
The two public keys are also used to construct the bet output which holds the coins until the outcome has been decided by the oracle.
The script locking the coins is a **1-of-2** with keys like:

```
1-of-2(P1 + O1, P2 + O2)
```

Where `P1` and `O1` represent the public key of the proposer and the outcome they are betting on respectively (and `P1` and `P2` for the offerer).
If the oracle releases `O1` then the propser may take the coins otherwise if the oracle releases `O2` the offerer can take the coins.
The Diffie-Hellman keys is also used to produce secret randomness (`R1` and `R2`) which both parties use to randomize the output so it's really:

```
1-of-2(P1 + O1 + R1, P2 + O2 + R2)
```

This way the publicly known values `P1` and `P2` are hidden.
When winner learns the secret for `O1` or `O2` from the oracle they can claim the coins because they can construct the secret key for `P1 + O1 + R1` or `P2 + O2 + R2`.
Note there is no real hurry for them to do so except that the coins can be [recovered from seed words](../backup-and-recovery.md) once they have been properly claimed.

## Security

The main thing for things to go wrong here is for a malicious party to somehow cause a bet transaction to be confirmed *after* the event outcome is already known and has resulted in their favor.
For example in a bet on a football match imagine if the propser only takes the offer after the team they are betting on scores the first goal!
The offerer must protect against this by cancelling their offer before the game starts. See [`gun bet cancel`](./cancel.md).

The proposer must be careful about taking offers with a low transaction fee.
If the transaction fee is low it may be stuck in the mempool until after the game starts.
The offerer may then cheat by double spending his output if it looks like the game is going against him.
Bet transactions enable *replace-by-fee* so either party can cancel it at this point by double spending one of their inputs (this is what [`gun bet cancel`](./cancel.md) does).

## Privacy

This protocol is trying to guarantee as much privacy as possible against an observer who sees the proposal, a list of offers and the blockchain.
Such an observer will be able to figure out:

1. What event the bet was on (they can see it in the proposal). This assumes the proposer is only using the input(s) for one bet but this might not be the case.
2. Where the bet transaction is in the blockchain and which output is the bet output and whose change output is whose (they can see the proposal's inputs so they will be able to find it).
3. Which inputs belong to the proposer and which belong to the offerer (the inputs belonging to the proposer are in the proposal).
4. How much was bet by each party (they know how much the proposer is risking and the value in the bet output).
5. Which change output on the bet transaction belongs to the proposer and offer respectiely (the proposer puts their change in the proposal so the other one must belong to offerer).

They should be unable to determine:

1. Which offer was taken or whether the offer that was taken was in the list of observed offers.
2. Whether an offer is a real offer or an encrypted message or otherwise random gibberish.
3. Who won the bet (they don't know who bet on what).

The basic summary of this is that privacy for the offerer is relatively good but for the propser it is relatively bad.

It's important to note that even if you do the bet privately (via direct messages) a blockchain observer can easily distinguish bet transactions from normal transactions with this protocol.
Here's an [example transaction](https://mempool.space/tx/31e515c9316699f82887c68dc2dff04ff72b598e7e41a2f5cd0fccbc09379106) which shows what it looks like when a bet is claimed.

For how this might improve in the future see the [roadmap](./roadmap.md).

[How to Make a Prediction Market on Twitter with Bitcoin]: https://raw.githubusercontent.com/LLFourn/two-round-dlc/master/main.pdf
 
