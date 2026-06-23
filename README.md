# homebrew-sessionx

Homebrew tap for [sessionx](https://github.com/jeromecoloma/sessionx) — a small tmux session manager with optional git-worktree mode and per-project status bars.

## Install

```sh
brew tap jeromecoloma/sessionx
brew trust jeromecoloma/sessionx   # Homebrew 6.0+ requires trusting non-official taps
brew install sessionx
```

### Trusting the tap

On Homebrew 6.0+, `HOMEBREW_REQUIRE_TAP_TRUST` defaults to `true`, so non-official taps must be trusted before brew will load their formulae. Skip the `brew trust` step and you'll hit:

```
Warning: Skipping sessionx: tap formula is not trusted
```

`brew trust jeromecoloma/sessionx` is a one-time action per machine — it records the tap in `~/.homebrew/trust.json` (or `$XDG_CONFIG_HOME/homebrew/trust.json`). Reverse it with `brew untrust jeromecoloma/sessionx`. Only official taps (`homebrew/core`, `homebrew/cask`) are trusted by default.

## Upgrade

```sh
brew update
brew upgrade sessionx
```

## License

The formula is MIT-licensed (matching upstream). See the [main repo](https://github.com/jeromecoloma/sessionx) for sessionx itself.
