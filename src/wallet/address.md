# gun address

Get and view addresses.

## Synopsis

```
gun address <subcommand>
```

## Subcommands

These commands interact with your wallet's *external* addresses. 
Internal addresses can't be seen.

You can see change address with coins in [`gun utxo list`](./utxo.md#list).

### new

```
gun address new
```

Get a new address from the wallet.
The wallet remembers that it has given out this address in the database.

### last-unused
```
gun address last-unused
```

Gets an address that hasn't been used yet.
If they've all been used so far it gets a new one.

### list

```
gun address list
```

List all addresses given out by this wallet.

### show

```
gun address show <address>
```

Get more details about a particular wallet address.

