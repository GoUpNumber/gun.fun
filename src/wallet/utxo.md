# gun utxo

Display your *unspent transaction outputs* (UTXOs).

> 💡 Bitcoin is a game of UTXO acquisition.
> Get as many of these as you can.

## Synopsis

```
gun utxo <subcommnd>
```

## Subcommands

At the moment a UTXO will no longer show up here if it has been spent by an unconfirmed transaction.
It will show up if it is on a 

### `list`

List all your UTXOs.

```
gun utxo list
```


### `show <utxo>`

Show more details about a UTXO.
`<utxo>` is given in `txid:vout` format e.g

```
gun utxo show 4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b:0
```

The above command shouldn't work unless that's your UTXO (it isn't).
