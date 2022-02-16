# Roadmap

## Features

1. [x] Support for xpub wallet which produces PSBTs and can write them to SD cards for signing devices. (done in v0.6)
2. [ ] Taproot support.
3. [ ] Threshold signing with [FROST](https://eprint.iacr.org/2020/852.pdf).
4. [ ] Signed releases for every platform. [#29](https://github.com/LLFourn/gun/issues/29)
5. [ ] signet betting protocol with `OP_CTV`
6. [ ] Connecting to esplora through Tor.
7. [ ] lightning with [LDK](https://lightningdevkit.org/).
8. [ ] A GUI with [tauri](https://github.com/tauri-apps/tauri) or something similar.
9. [ ] WASM plugin system

## Research Problems

`gun` is a research project that I hope develops into a useful tool.

### Betting and Taproot

Taproot can improve the betting protocol in several ways.
I have a protocol in mind that could achieve the following:

1. All transactions involved would be taproot key spends.
2. The two parties would be able to cooperatively resolve a bet if the oracle were to fail to attest.
3. Someone who has their coins stolen from the bet with an incorrect attestation (i.e. the oracle privately leaked the attestation to the thief) can prove that this happened.

Other than that I hope I can make the whole wallet taproot-only eventually.

### A better backend

`gun` can only use [esplora] as a backend.
Since it is difficult to run yourself people will mostly end up using the default server [mempool.space](https://mempool.space).
This is a security and privacy hole.

An area of research I want to undertake is whether we can architect an easier to run and less resource intensive backend that still offers a rich enough API.


[esplora]: https://github.com/Blockstream/electrs

