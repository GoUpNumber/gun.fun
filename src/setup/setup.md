# gun setup

Setup a new wallet (or restore an old one).

The setup process will create the *gun directory* and populate it with:

1. `config.json`: A [configuration](./config.md) file.
2. `database.sled`: The database directory containing protocol data and wallet data.

The only thing that is set in stone at setup time are the wallet's descriptors.
These are written to the database.

## Subcommands

Each subcommand sets up a wallet in a different way.
They all take the `--network` option in addition to their specific options.

- `--network <bitcoin|regtest|testnet|signet>`: sets which Bitcoin network we are using. The default is `bitcoin` (mainnet).

### `seed`

Set up `gun` using [BIP39] seed words.
`gun` saves words to `$GUN_DIR/seed.txt` and reads them in each time you need to sign.

- `--from-existing <FILE>`: reads existing [BIP39] seed words from a file (or `-` to read from `STDIN`).
- `--n-words <[12|24]>`: specifies the number of seed words to use (default: 12).
- `--use-passphrase`: apply a BIP39 passphrase to the seed words when deriving private keys from it.

> ⚠ `--from-existing` and `--use-passphrase` will only restore coins from existing seed words if the coins were held with the same BIP39 passphrase.
> You cannot upgrade the security of existing seed words that didn't have a passphrase before with this command.

### `coldcard <path-to-sd-card>`

You can use `gun` to output PSBTs to an SD card that you can then sign with your [ColdCard].
Once you've signed them on the device `gun` can broadcast them.

#### Step 1

First make a wallet export. On your device:

```
Advanced -> MicroSD Card -> Export Wallet -> Generic JSON
```

This should save a file `coldcard-export.json` to your SD card which contains the information gun needs to load your wallet.

#### Step 2 (optional)

In order to engage in protocols (e.g. betting) you'll also need to export some entropy that `gun` can use to generate keys that hold coins temporarily.
On your device:

1. Navigate to `Advanced -> Derive Entropy -> 64-bytes hex`
2. Enter index `330`
3. Then, press `1` to export the resulting entropy to `drv-hex-idx330.txt` on your SD card.

> 💡 you can set this later using [`gun config protocol`] if you skip this now.

#### Step 3

Insert the SD card to your computer and initialize gun with:

```
gun setup coldcard /path/to/sd/card --import-entropy
```

or if you skipped step 2:

```
gun setup coldcard /path/to/sd/card
```

> 💡 If you encounter a ColdCard signing error "We require subpaths to be specified in the PSBT." then please [update your firmware](https://coldcard.com/docs/upgrade).

### `xkey <xpub|xprv>`

You can initialize gun using an extended key descriptor:
```
gun setup xkey "[E83E2DB9/84'/0'/0']xpub66..mSXJj"
```

The descriptor is in the form `[master-fingerprint/derivation'/path']xkey`.
`gun` will derive `p2wpkh` external keys at `xkey/0/*` and internal keys at `xkey/1/*` as is done in BIP84, BIP86 etc.

If you initialise it with an `xpriv` you will be able to sign transactions.
The `xpriv` itself will be stored unencrypted in the database.

If you initialise with an `xpub` it will be watch-only until you also add a signer with [`gun config signer`](./config.md).

### `descriptor <external> [internal]`

You can specify explicit [miniscript] descriptors for the wallet.
`gun` will use `external` to derive receiving addresses and, if provided, use `internal` for deriving change addresses.
This is a powerful option that allows you to set up custom multisigs etc.

The following is equivalent to doing `xkey` example above:

```
gun setup descriptor wpkh([AAB893A5/84'/0'/0']xpub66..mSXJj/0/* wpkh([AAB893A5/84'/0'/0']xpub66..mSXJj/1/*
```

You can use private key descriptors as well but remember that they will be stored in plaintext in the database.
If you provide public key descriptors the wallet will be watch-only until you add a signer with [`gun config signer`].

[`gun config protocol`]: ./config.md
[`gun config signer`]: ./config.md

[ColdCard]: https://coldcard.com/
[PSBT]: https://bitcoinops.org/en/topics/psbt/
[BIP39]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki
[miniscript]: https://bitcoinops.org/en/topics/miniscript/
