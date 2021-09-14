# Go Up Number!

This is the user manual for *Go up Number!* or `gun` — a command line Bitcoin wallet for plebs, degenerates and revolutionaries.

The main design goal of `gun` is for it to be *fun*!
It might also be secure and stuff but we'll have to see.
`gun` is **alpha quality** in all respects. 
Bugs aren't fun so please report them on the [repo][`gun`].

The defining feature of `gun` is [peer-to-peer betting](./bet/betting.md) by copy-pasting gibberish.
This is the only reason to use this wallet at the moment so you should only put what you need to play with (and are willing to lose).

## Architecture

[`gun`] is written in rust and uses the [Bitcoin Dev Kit](https://bitcoindevkit.org/) to implement the underlying wallet functionality[^1].
It needs a trusted [esplora backend] server to provide blockchain data and by default it uses [mempool.space](https://mempool.space).
`gun`'s strict dependence on esplora is its greatest weakness.

## Contributing

[`gun`] is open source.
It relies on the community to report and (if they can) fix bugs.
Report bugs on [the repository]( https://github.com/LLFourn/gun/issues ).
It'd also be helpful if you could improve this book whose repository is [here](https://github.com/LLFourn/gun.fun).

[`gun`]: https://github.com/LLFourn/gun
[esplora backend]: https://github.com/Blockstream/electrs
[^1]: Right now it uses a branch of bdk at [llfourn/bdk](https://github.com/llfourn/bdk/tree/gun).
