# Go Up Number! <iframe src="https://ghbtns.com/github-btn.html?user=llfourn&repo=gun&type=star&count=true&size=large" style="float: right;" frameborder="0" scrolling="0" width="170" height="30" title="GitHub"></iframe>



This is the user manual for *Go up Number!* — a command line Bitcoin wallet for plebs, degenerates and revolutionaries.

The main design goal of `gun` is for it to be *fun*!
It might also be secure and stuff but we'll have to see.
`gun` is **beta quality** in all respects. 
Thanks in advance for making the sacrifice of your time (and perhaps coins!) while testing this software.

The defining feature of `gun` is the [`bet`](./bet/betting.md) command which lets you do peer-to-peer betting by copy-pasting gibberish.
This is the only reason to use this wallet at the moment so you should only put what you need to play with (and are willing to lose).

## Architecture

[`gun`] is written in rust and uses the [Bitcoin Dev Kit](https://bitcoindevkit.org/) (bdk) to implement the underlying wallet functionality[^1].
It needs a trusted [esplora backend] server to provide blockchain data and by default it uses [mempool.space](https://mempool.space).


## Contributing

[`gun`] is open source.
It relies on the community to report and (if they can) fix bugs.
Bugs aren't fun so please report them on the [repository][`gun`].
You can improve [this book](https://github.com/LLFourn/gun.fun) too.

[`gun`]: https://github.com/LLFourn/gun
[esplora backend]: https://github.com/Blockstream/electrs
[^1]: Right now it uses a branch of bdk at [llfourn/bdk](https://github.com/llfourn/bdk/tree/gun).
