# Upgrading from pre `v0.6.0`

If upgrading from a pre `v0.6.0` release you will need to do the following:

1. Make sure you have no open bets (`gun bet list`should be empty).
2. Make a note of how many coins you have `gun -s balance`.
3. Backup your existing gun directory by moving it from its current location.
5. Install the latest version of `gun`.
4. Run `gun setup seed --from-existing <path-to-backup>/seed.txt`
5. Run `gun -s balance` and to check your coins are there.
6. Delete the backup
