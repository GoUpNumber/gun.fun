# gun tx

Display transactions related to this wallet.

## Synopsis

```
gun tx <subcommand>
```

## Subcommands

For a transaction to be in the database it must spend to or from an address owned by this wallet.

### list

```
gun tx list
```

Lists transactions associated with the wallet.
This only keeps track of transactions that come in and out of the main wallet.
For example, if you [`claim`](../bet/claim.md) coins from a won bet to an unrelated address it won't show up here.


When you're waiting for a transaction to come in it can be handy to try:

```
gun -s tx list
```

### show

```
gun tx show <txid>
```

Shows more details about a particular wallet transaction.
