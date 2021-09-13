# Configuration

The main configuration file is in `~/.gun/config.json` and looks something like this:

```json 
{
  "network": "bitcoin",
  "blockchain": {
    "type": "esplora",
    "base_url": "https://mempool.space/api",
    "concurrency": 4,
    "stop_gap": 10,
    "kind" : "mempool"
  },
  "kind": "p2wpkh",
  "keys": "seed-words-file"
}
```

## Configuration keys

### `network`

Which network the wallet operates on:

- `bitcoin`: The bitcoin mainnet.
- `testnet`: the Bitcoin testnet.
- `regtest`: A local regtest node.
- `signet`: A *signet* tesnet (not supported yet: [issue#21](https://github.com/LLFourn/gun/issues/21)).

### `kind`

This indicates the kind of wallet it is. 
Right now `p2wpkh` is the only option which means it uses [BIP84] derivation to get `p2wpkh` addresses.

### `blockchain`

Configures the blockchain backend that the wallet will use.
Only esplora style backends are supported (e.g. https://mempool.space and https://blockstream.info).
The only interesting option for non-developers at the moment is the `base_url` parameter which could be changed to your own [esplora backend] or another one you prefer.

### `keys`

Indicates where keys are derived from. Right now the only option is `seed-words-file`.

## `GUN_DIR`

You can override the default directory `~/.gun` that `gun` uses to find its configuration with the `GUN_DIR` environment variable or by using the `-d` top level option:

```sh
GUN_DIR=~/my_gun_dir gun init bitcoin
# does the same thing as
gun -d ~/my_gun_dir init bitcoin
```

[esplora backend]: https://github.com/Blockstream/electrs
[BIP84]: https://github.com/bitcoin/bips/blob/master/bip-0084.mediawiki
