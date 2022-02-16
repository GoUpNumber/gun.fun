# Backup and Recovery

In your [gun directory](./GUN_DIR.md) (usually `~/.gun`) there are a couple of files that will cause pain if you lose them.


## `seed.txt`

`seed.txt` contains your secret [BIP39] seed phrase if you setup the wallet using `gun setup seed`.
If you lose `seed.txt` you lose all your coins.
If someone else gets their hands on it they can take all your coins.
`seed.txt` never changes so you only ever need to take one backup.

## `database.sled`

If you lose `database.sled` you lose the coins from bets you have *won* or will *win* but haven't claimed yet.
To guarantee you don't lose coins from this, you must backup `database.sled` after each bet.
The best way to avoid loss of funds here is to claim your winnings in a timely manner.

Theoretically, it is possible to recover these with your main wallet but that hasn't been implemented yet.

[BIP39]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki


