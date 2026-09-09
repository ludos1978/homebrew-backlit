# homebrew-backlit

Homebrew tap for [Backlit](https://github.com/ludos1978/Backlit) — a free,
open-source display manager for macOS (brightness, gamma, XDR brightness, HiDPI,
virtual displays, presets).

## Install

```bash
brew trust ludos1978/backlit          # Homebrew ≥ 6 requires trusting third-party taps
brew tap ludos1978/backlit
brew install --cask backlit
xattr -d com.apple.quarantine /Applications/Backlit.app
```

The last line is required: Backlit is ad-hoc signed and **not notarized**, so
macOS refuses to open it ("cannot be opened because the developer cannot be
verified") until the quarantine attribute is removed. (Alternative: right-click
the app → **Open** and confirm the dialog once.)

## Update

```bash
brew upgrade --cask backlit
xattr -d com.apple.quarantine /Applications/Backlit.app
```

## Uninstall

```bash
brew uninstall --cask backlit        # removes the app
brew uninstall --cask --zap freedisplay  # also removes settings and presets
```

## Requirements

macOS 14 (Sonoma) or newer, Apple Silicon or Intel. Homebrew 6 or newer.
