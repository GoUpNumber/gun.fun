# gun config

`gun config` lets you get and set configuration values.
The command doesn't let you set every configuration value but it should be a more stable and safe than editing the [`config.json`] directly.

See `gun config --help` for all the configuration options.

[`config.json`]: ../config.md


## Common usage

Set the esplora backend to your local esplora instance:

```
gun config blockchain base_url set http://esplora.local:3000
```
