# gun bet oracle

Add, List and remove oracles from trusted list.
For now, the security model for oracles is *[trust on first use](https://en.wikipedia.org/wiki/Trust_on_first_use)* (TOFU).


## Synopsis

```
gun bet oracle <subcommand>
```

## Subcommands

### add

```
gun bet oracle add [options] <oracle-id>
```

Adds an oracle to the list of trusted oracles.
For example the following command will make a request to [https://h00.ooo](https://h00.ooo) and prompt you whether to accept it. 

```
gun bet oracle add h00.ooo
```

#### Options

##### `-y, --yes`

Accept the keys the oracle gives you without asking.

### list

```
gun bet oracle list
```

List trusted oracles.

### show

```
gun bet oracle show <oracle-id>
```

Display details about an oracle. For example, 

```
gun bet oracle show h00.ooo
```

*TODD: document the output here*



[trust on first use]: https://en.wikipedia.org/wiki/Trust_on_first_use 
