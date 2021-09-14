# gun bet oracle

Add, List and remove oracles from trusted list.
For now, the security model for oracles is *[trust on first use](https://en.wikipedia.org/wiki/Trust_on_first_use)* (TOFU).

### `gun bet oracle add [options] <oracle-id>`

Adds an oracle to the list of trusted oracles.
For example the following command will make a request to [https://h00.ooo](https://h00.ooo) and prompt you whether to accept it. 

```
gun bet oracle add h00.ooo
```

#### Options

##### `-y, --yes`

Don't prompt to accept what the oracle gives you.

### `gun bet oracle list`

List trusted oracles.

### `gun bet oracle show <oracle-id>`

Display details about an oracle. For example, 

```
gun bet oracle show h00.ooo
```

*TODD: document the output here*



[trust on first use]: https://en.wikipedia.org/wiki/Trust_on_first_use 
