# Setup
There are several ways to initialize a `gun` wallet
```
gun init <SUBCOMMAND>
```
* `seed`: Create a wallet with a new BIP39 seed mnemonic, or use existing seed words.
* `coldcard`: Load a Coldcard wallet export from an SD card.
* `xpub`: Initialize using an extended public key descriptor.
* `descriptor`: Initialize using a wallet descriptor.

`gun init` will create `~/.gun` and populate with several things:
1. `config.json`: A [configuration](./config.md) file.
2. `database.sled`: The database directory containing protocol data and wallet data.
3. `secret_protocol_randomness`: A random hex secret used within gun's betting protocol. **This should be backed up**.
4. `seed.txt`: If you initialize gun using a seed, the **unencrypted** [BIP39] seed phrase used to derive all keys and other secret data. **This should be backed up**.

## Seed

Setting up a `gun` wallet using a seed is done through the `gun init seed` command.

To initialize a mainnet wallet run:

```
gun init seed
```

Or you can bring your own [BIP39] seed words:

```
gun init seed --from-existing ./my-seedwords.txt
```
Or read them from stdin
```
gun init seed --from-existing -
```

Or run on a different network

```
gun init seed --network testnet
```

Right now `gun` stores a unencrypted [BIP39] seed phrase on your disk.
This is not really fun and so I hope to add other options in the future.

[BIP39]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki

## Coldcard

You can use gun with your Coldcard by first making a wallet export. On your device: `Advanced -> MicroSD Card -> Export Wallet -> Generic JSON`.

This will save a `coldcard-export.json` to your SD card which contains the information gun needs to load your wallet.

Optionally, you **should** also export a derived entropy file from your Coldcard as this will be used for gun's `secret_protocol_randomness`, essentially another seed used in gun's betting protocol. Exporting from Coldcard means you will always be able to reproduce your secret entropy.

On Coldcard:
`Advanced -> Derive Entropy -> 64-bytes hex. Enter index 330 and press 1 to export to SD.`
This will save a file `drv-hex-idx330.txt` to your SD card.

Insert the SD card to your computer and initialize gun with:
```
gun init coldcard /my/sd/card --import-entropy
```
You can leave out the `--import-entropy` flag if you want to skip exporting the derived entropy and want gun to generate secret randomness for you. But in this case, remember to back up `secret_protocol_randomness`.

Unsigned PSBTs will be saved to your SD card. You will then eject the SD card and insert it into your Coldcard, sign transactions, and return the SD card where gun will load the signed transaction.

Note: if you encounter a Coldcard signing error "We require subpaths to be specified in the PSBT." then please [update your firmware](https://coldcard.com/docs/upgrade).

## XPub

You can initialize gun using an extended public key descriptor:
```
gun init xpub "[E83E2DB9/84'/0'/0']xpub6...a6"
```

This descriptor is in the form `[masterfingerprint/derivation'/path']xpub`.

As gun will not have access to any signing keys, PSBTs will be saved to `$GUNDIR/psbts`. You can specify this directory with `--psbt-output-dir`:
```
gun init xpub --psbt-output-dir /my/psbts "[E83E2DB9/84'/0'/0']xpub6...a6"
```

## Descriptor

External descriptors and (optionally) internal descriptors can be specified to initialize a gun wallet:
```
gun init descriptor wpkh([AAB893A5/84'/0'/0']xpub66..mSXJj/0/* wpkh([AAB893A5/84'/0'/0']xpub66..mSXJj/1/*
```
External descriptors will be used for receiving addresses, and internal descriptors for change addresses.

By default, PSBTs will be saved to `$GUNDIR/psbts`. You can specify this location with `--psbt-output-dir`.
