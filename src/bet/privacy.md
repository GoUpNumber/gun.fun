# Privacy

This protocol is tries to guarantee as much privacy as possible against an observer who sees the proposal, a list of offers and the blockchain.
Such an observer will be able to figure out:

1. What event the bet was on (they can see it in the proposal). This assumes the proposer is only using the input(s) for one bet but this might not be the case.
2. Where the bet transaction is in the blockchain and which output is the bet output and whose change output is whose (they can see the proposal's inputs so they will be able to find it).
3. Which inputs belong to the proposer and which belong to the offerer (the inputs belonging to the proposer are in the proposal).
4. How much was bet by each party (they know how much the proposer is risking and the value in the bet output).
5. Which change output on the bet transaction belongs to the proposer and offer respectively (the proposer puts their change in the proposal so the other one must belong to offerer).

They should be unable to determine:

1. Which offer was taken or whether the offer that was taken was in the list of observed offers.
2. Whether an offer is a real offer or an encrypted message or otherwise random gibberish.
3. Who won the bet (they don't know who bet on what).

The basic summary of this is that privacy for the offerer is relatively good but for the proposer it is relatively bad.

It's important to note that even if you do the bet privately (via direct messages) a blockchain observer can easily distinguish bet transactions from normal transactions with this protocol.
Here's an [example transaction](https://mempool.space/tx/31e515c9316699f82887c68dc2dff04ff72b598e7e41a2f5cd0fccbc09379106) which shows what it looks like when a bet is claimed.

For how this might improve in the future see the [roadmap](./roadmap.md).

> 💡 Another important aspect of privacy is that `gun` uses [mempool.space](https://mempool.space) by default as a backend.
> Connecting to it through Tor would improve privacy.
> Even better would be connecting to your own esplora node (and safety!).
> This is still tricky at the moment. See [roadmap](../roadmap.md#a-better-backend).
