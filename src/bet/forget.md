# gun bet forget

Delete a bet from your local database.

> 💡There are some bets you'd rather forget about but this command can't do anything about that.

## Synopsis

```
gun bet forget [bet-ids]...
```

## Description


This command just deletes a bet from your local database.
This is obviously dangerous depending on the state of the bet so `gun bet forget` will stop you from deleting your coins or warn you when you need to be careful.

> ⚠️ Unless you're sure you understand the impact of forgetting a bet use [`gun bet cancel`](./cancel.md) instead.


