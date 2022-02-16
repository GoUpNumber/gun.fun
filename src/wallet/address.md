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

Gets a new address if it hasn't been used yet.
Otherwise outputs a fresh address.

### list

```
gun address list
```

List all addresses given out by this wallet.
By default this only shows `external` addresses i.e. addresses produced by `gun address new`.

Options:

- `-a, --all`: Show all addresses (internal & external)
- `-i, --internal`: Show only internal addresses

### show

```
gun address show <address>
```

Get more details about a particular wallet address.

