# Roadmap

## Future features

1. Signed releases for every platform. [#29](https://github.com/LLFourn/gun/issues/29)
2. Support for xpub wallet which produces PSBTs and can write them to SD cards for signing devices.
3. Brain wallets.
4. lightning with [LDK](https://lightningdevkit.org/).

## Research Problems

`gun` is a research project that I hope develops into a useful tool.

### Betting and Taproot

Taproot can improve the betting protocol in several ways.
I have a protocol in mind that could achieve the following:

1. All transactions involved would be taproot key spends.
2. The two parties would be able to cooperatively resolve a bet if the oracle were to fail to attest.

Other than that I hope I can make the whole wallet taproot-only eventually.

### A better backend

`gun` can only use [esplora] as a backend.
Since it is difficult to run yourself people will mostly end up using the default server [mempool.space](https://mempool.space).
This is a security hole.

An area of research I want to undertake is whether we can architect an easier to run and less resource intensive backend that still offers a rich enough API.


[esplora]: https://github.com/Blockstream/electrs

