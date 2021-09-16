# gun address

Get view addresses.

## Synopsis

```
gun address <subcommand>
```

## Subcommands

Note that these commands don't interact with *internal* (change) addresses.
You can see change address with coins in [`gun utxo list`](./utxo.md#list).

### `gun address new`

Get a new address from the wallet.
The wallet remembers that it has given out this address in the database.

### `gun address last-unused`

Gets an address that hasn't been used yet.
If they've all been used so far it gets a new one.

### `gun address list`

List all addresses given out by this wallet.

### `gun address show <address>`

Get more details about a particular address.

