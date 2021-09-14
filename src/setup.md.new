# Setup

Setting up a gun wallet is done through the `gun init <network>` command.

To initialize a mainnet wallet run:

```
gun init bitcoin 
```

Or you can bring your own [BIP39] seed words:

```
gun init --from-existing ./my-seedwords.txt bitcoin
```
Or to read from stdin
```
gun init --from-existing - bitcoin
```

Or run on a different network

```
gun init tesetnet
```

Right now `gun` stores a unencrypted [BIP39] seed phrase on your disk.
This is not really fun and so I hope to add other options in the future.

`gun init` will create `~/.gun` and populate it.
Within it there will be three directories:

- `seed.txt`: The **unencrypted** [BIP39] seed phrase used to derive all keys and other secret data. This should be backed up.
- `config.json`: A [configuration](./config.md) file.
- `database.sled`: The database directory containing protocol data and wallet data.

[BIP39]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki



