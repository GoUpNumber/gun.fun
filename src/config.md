# Configuration

The main configuration file is in `~/.gun/config.json` and looks something like this:

```json
{
  "version": "1",
  "network": "signet",
  "blockchain": {
    "type": "esplora",
    "base_url": "https://mempool.space/signet/api",
    "concurrency": 10,
    "stop_gap": 10
  },
  "signers": [
    {
      "kind": "seed-words-file",
    }
  ]
}
```

## Configuration keys

### `network`

Which network the wallet operates on:

- `bitcoin`: The bitcoin  Bitcoin.
- `testnet`: the Bitcoin testnet.
- `regtest`: A local regtest node.
- `signet`: The *signet* testnet

### `blockchain`

Configures the blockchain backend that the wallet will use.

At the moment only esplora style backends are supported (e.g. [https://mempool.space/api] and [https://blockstream.info/api]).

#### `base_url`

Sets the esplora HTTP API backend to make requests to

#### `concurrency`

How many requests to make in parallel to the esplora backend.

#### `stop_gap`

How many unused addresses should `gun` wait to find until it stops scanning more when syncing.

### `signers`

signers is an array of signing methods that will be used to sign transactions.
Most of the time this will have a single entry.

[esplora backend]: https://github.com/Blockstream/electrs
[BIP84]: https://github.com/bitcoin/bips/blob/master/bip-0084.mediawiki
[https://blockstream.info/api]: https://blockstream.info/api
[https://mempool.space/api]: https://mempool.space
