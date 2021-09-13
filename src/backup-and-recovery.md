# Backup and Recovery

In your gun directory (usuallly `~/.gun`) there are a couple of files that will cause pain if you lose them.


## `seed.txt`

`seed.txt` contains your secret [BIP39] seed phrase.
If you lose seed.txt you lose all your coins.
If someone else gets their hands on it they can take all your coins.
`seed.txt` never changes so you only ever need to take one backup.

## `database.sled`

If you lose `database.sled` you lose the coins from bets you have *won* or will *win* but haven't claimed yet.
It is not recommended to take backups of `database.sled` unless you are about to upgrade the wallet manually.
The best way to avoid loss of funds here is to claim your winnings in a timely manner.
Once the coins have been claimed they can be recovered from your `seed.txt`.

Technically, it is possible to recover these coins just with your `seed.txt` but this hasn't been implemented yet.

[BIP39]: https://github.com/bitcoin/bips/blob/master/bip-0039.mediawiki


