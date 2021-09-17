# GuN Betting

The main reason I developed `gun` was to be able to experiment with Bitcoin betting through social media and messaging apps.
I originally wrote down the idea in *[How to Make a Prediction Market on Twitter with Bitcoin]*.
At a high level this is how it works:

1. The first person, the *proposer*, *proposes* a bet by choosing an event to bet on (including the oracle to use) and value to risk.
   The proposal data also contains the inputs they will use to fund the bet. See [`gun bet propose`](./propose.md).
2. Anyone who sees the proposal may make an *offer* in response by choosing how much they will risk in return and which outcome they want to bet on. See [`gun bet offer`](./offer.md).
   The offer is fully encrypted and can only be decrypted by the proposer.
   In fact, it might not be an offer at all since you instead can use [`gun bet reply`](./reply.md) to send an encrypted message instead which will be indistinguishable from an encrypted offer.
3. The proposer decrypts any offer they get and if they want to take the other side of the bet they broadcast the bet funding transaction.
   They may only choose one offer. See [`gun bet take`](./take.md).
4. Both parties monitor the state of the bet by using [`gun -s bet list`](./list.md).
4. When the oracle publishes the outcome the winning party gains ownership of the coins.
   When they're ready they can move the coins into their main wallet with [`gun bet claim`](./claim.md).
   
[How to Make a Prediction Market on Twitter with Bitcoin]: https://raw.githubusercontent.com/LLFourn/two-round-dlc/master/main.pdf
 

