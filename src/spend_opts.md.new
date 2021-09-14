### `--bump-claiming`

Spend coins from any bets that are currently in the `claiming` state. The `claiming` state means there is already a pending transaction spending them so this new transaction will *replace-by-fee* that previous transaction. You should make sure the feerate on this one is higher than the previous.

### `--no-spend-unclaimed`

Don't spend coins you own outside of your wallet e.g. coins from bets you won.
By default gun spends these coins back into your wallet with any chance it gets but this option stops that behavior.

### `--spend-in-use`

Spend even the coins you are using for other things.

When you make a proposal or an offer the outputs used in the bet are considered to be **in-use**.
This option allows the transaction to spend them (but doesn't force it to).
