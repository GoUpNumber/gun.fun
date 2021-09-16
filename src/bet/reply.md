# gun bet reply

Reply with an encrypted message rather than an [offer](./offer.md) to a [proposal](./propose.md).

## Synopsis

```
gun bet reply [OPTIONS] <proposal>
```

Taunt your opponent

```
echo "I just wanted to wish you luck on this bet" | gun bet reply  0.01#h00.ooo#/random/2021-09-09T08:14:00/heads_tails.winner#ഩǠɢѩչਠനՎȆଞગਐעͻڢѓӫҹڣလߛϊرКɏҵฤຂΘݸլၷ࿋னЉඇໜЈবɇοȾಋѻݙȁ࿅ผɱƂइŏǱێեЯಐۇฝဆসϑ࿖ɀჵਊၒβԼјஊڠၮɈ།
```

## Options

### `-m, --message <message>`

Set the message for the reply with an argument.
If this is omitted it will read the message from stdin.

### `-p, --pad <pad>`

Pad the ciphertext to a certain length of bytes so observes can't use the ciphertext length to determine the contents.
The default value is 385 which happens to the amount that will fit the [base2048] encoded ciphertext in a single tweet.
If you don't want padding just add `-p0`.

[base2048]: https://github.com/LLFourn/rust-base2048
