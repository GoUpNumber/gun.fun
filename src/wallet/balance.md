# gun balance

Get the balance of your wallet.

```
gun balance
```

Buf often you want to sync first.

```
gun -s balance
```

The output has the follwing fields:

- **confirmed**: coins that are owned by this wallet and confirmed in the chain (but not **in-use**).
- **unconfirmed**: coins that have been sent to your wallet but haven't been confirmed (and not **in-use**).
- **unclaimed**: coins that you own but you haven't claimed -- if you [lose your database](../backup-and-recovery.md) you will lose them.
- **available**: coins that are available to be used. This is just the total of the above.
- **locked**: coins that are locked in some protocol execution (e.g. bet) you might get access to them or you might not!
- **in-use**: coins that are being reserved for use in some protocol execution (e.g. a bet).
