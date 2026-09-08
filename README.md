# homebrew-freedisplay

Homebrew tap for [FreeDisplay](https://github.com/ludos1978/FreeDisplay) — a free,
open-source display manager for macOS (brightness, gamma, XDR brightness, HiDPI,
virtual displays, presets).

## Install

```bash
brew tap ludos1978/freedisplay
brew install --cask --no-quarantine freedisplay
```

`--no-quarantine` matters: FreeDisplay is ad-hoc signed and not notarized, so
without it macOS shows "cannot be opened because the developer cannot be
verified" on first launch.

If you already installed it (or downloaded the app by hand) and macOS refuses
to open it, remove the quarantine attribute once:

```bash
xattr -dr com.apple.quarantine /Applications/FreeDisplay.app
```

## Update

```bash
brew upgrade --cask freedisplay
```

## Uninstall

```bash
brew uninstall --cask freedisplay        # removes the app
brew uninstall --cask --zap freedisplay  # also removes settings and presets
```

## Requirements

macOS 14 (Sonoma) or newer, Apple Silicon or Intel.
