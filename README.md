# Jambo Company Homebrew Tap

[![Homebrew Cask](https://img.shields.io/badge/Homebrew-Cask-orange.svg)](https://brew.sh)
[![macOS Notarized](https://img.shields.io/badge/macOS-Notarized-blue.svg)](https://developer.apple.com)

Official Homebrew Tap for [**Orlim**](https://github.com/Jambo-company/orlim-releases) and **RunEnv Desktop**. All distributed macOS bundles are Universal (`arm64` + `x86_64`), signed with Developer ID (`7732Q53565`), and notarized by Apple.

---

## Available Casks

| Application | Description | Install Command |
| :--- | :--- | :--- |
| **[Orlim](https://github.com/Jambo-company/orlim-releases)** (`orlim`) | Native macOS menu bar workstation for AI coding tools (29 provider quota trackers including Claude `Fable · Weekly`, 7 local coding runtime activity & token burn monitors, route advisor, session handoff, desktop widget, and window snapping) | `brew install --cask Jambo-company/tap/orlim` |
| **RunEnv Desktop** (`runenv`) | Environment and secret management desktop client | `brew install --cask Jambo-company/tap/runenv` |

---

## Installation

### Install Orlim

```bash
brew tap Jambo-company/tap https://github.com/Jambo-company/homebrew-tap
brew install --cask orlim
```

Or in a single command:

```bash
brew install --cask Jambo-company/tap/orlim
```

### Install RunEnv Desktop

```bash
brew install --cask Jambo-company/tap/runenv
```

---

## Updates & Upgrading

Both **Orlim** and **RunEnv Desktop** include built-in update checks, or you can upgrade from the terminal:

```bash
brew update && brew upgrade --cask orlim
brew update && brew upgrade --cask runenv
```

### Common Issue: "latest version is already installed"

If a new release was just published and Homebrew's local cache has not refreshed yet:

```bash
brew update
brew reinstall --cask Jambo-company/tap/orlim
```

---

## Uninstallation

```bash
brew uninstall --cask orlim
brew uninstall --cask runenv
brew untap Jambo-company/tap
```

---

## Issues & Support

- **Orlim issues & feature requests:** [github.com/Jambo-company/orlim-releases/issues](https://github.com/Jambo-company/orlim-releases/issues)
- **RunEnv issues:** [github.com/Jambo-company/runenv/issues](https://github.com/Jambo-company/runenv/issues)
