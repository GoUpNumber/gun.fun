# `GUN_DIR`

`gun` always needs to know its `GUN_DIR` directory.
By default this `$HOME/.gun`.
You can check what it is by running:

```
gun config dir get
```

You can override the default in two ways:

1. By setting the `GUN_DIR` environment variable.

```sh
# Create a wallet with at ~/my_other_wallet
export GUN_DIR=~/my_other_wallet
gun setup seed
gun address new
```

2. Or, by setting the `-d` flag

```sh
gun -d my_other_wallet setup seed
gun -d my_other_wallet address new
```


