# Bet Protocol Technical Overview

The proposal contains a public key which the offerer will use to encrypt their offer.
The offer contains a public key followed by a ciphertext.
The ciphertext is encrypted by deriving a key from the [Diffie-Hellman] key between the two public keys.
The two public keys are also used to construct the bet output which holds the coins until the outcome has been decided by the oracle.
The script locking the coins is a **1-of-2** with keys like:

```
1-of-2(P1 + O1, P2 + O2)
```

Where `P1` and `O1` represent the public key of the proposer and the outcome they are betting on respectively (and `P2` and `O2` for the offerer).
If the oracle releases `O1` then the proposer will get the coins otherwise if the oracle releases `O2` the offerer gets them.
The Diffie-Hellman keys is also used to produce secret randomness (`R1` and `R2`) which both parties use to randomize the output so it's really:

```
1-of-2(P1 + O1 + R1, P2 + O2 + R2)
```

This way the publicly known values `P1` and `P2` from the offer and proposal are hidden in the output and so can't be
When winner learns the secret for `O1` or `O2` from the oracle they can claim the coins because they can construct the secret key for `P1 + O1 + R1` or `P2 + O2 + R2`.
Note there is no real hurry for them to do so except that the coins can be [recovered from seed words](../backup-and-recovery.md) once they have been properly claimed.

[Diffie-Hellman]: https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange
