# Configuration

The main configuration file is in `~/.gun/config.json` and looks something like this:

```json
{
  "version": "1",
  "network": "bitcoin",
  "psbt-output-dir": "/home/user/psbts",
  "blockchain": {
    "type": "esplora",
    "base_url": "https://mempool.space/api",
    "concurrency": 10,
    "stop_gap": 10
  },
  "wallet-key": {
    "kind": "seed-words-file"
  }
}
```

## Configuration keys

### `network`

Which network the wallet operates on:

- `bitcoin`: The bitcoin  Bitcoin.
- `testnet`: the Bitcoin testnet.
- `regtest`: A local regtest node.
- `signet`: A *signet* testnet (not supported yet: [issue#21](https://github.com/LLFourn/gun/issues/21)).

### `psbt-output-dir`

If gun does not have access to private keys for signing transactions, then unsigned PSBTs will be saved to this directory. Users will then manually sign these transactions and save them back to this directory where they will be loaded for broadcasting.

### `blockchain`

Configures the blockchain backend that the wallet will use.
Only esplora style backends are supported (e.g. [https://mempool.space/api] and [https://blockstream.info/api]).
The only interesting option for non-developers at the moment is the `base_url` parameter which could be changed to your own [esplora backend] or another one you prefer.

### `wallet-key`

Indicates what `kind` of wallet gun is using and where keys are derived from. `kind` can be a `seed-words-file` or a `descriptor` based wallet. Descriptor based configurations will include the `internal` and `external` wallet descriptors.

## `GUN_DIR`

You can override the default directory `~/.gun` that `gun` uses to find its configuration with the `GUN_DIR` environment variable or by using the `-d` top level option:

```sh
GUN_DIR=~/my_gun_dir gun init bitcoin
# does the same thing as
gun -d ~/my_gun_dir init bitcoin
```

[esplora backend]: https://github.com/Blockstream/electrs
[BIP84]: https://github.com/bitcoin/bips/blob/master/bip-0084.mediawiki
[https://blockstream.info/api]: https://blockstream.info/api
[https://mempool.space/api]: https://mempool.space
