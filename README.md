# 🍺 Jambo Company Homebrew Tap

[![Homebrew Cask](https://img.shields.io/badge/Homebrew-Cask-orange.svg)](https://brew.sh)
[![macOS Notarized](https://img.shields.io/badge/macOS-Notarized-blue.svg)](https://developer.apple.com)

This is the officially maintained third-party Homebrew repository (a "Tap") for **RunEnv Desktop**.

Because RunEnv Desktop releases new iterations rapidly and requires zero-touch deployments, we maintain this dedicated Tap to instantly push updates without waiting for the official `homebrew-cask` 75-star popularity requirement and manual merge queue.

## 🚀 Installation

Tap the repository and install the application in two commands:

```bash
brew tap Jambo-company/tap https://github.com/Jambo-company/homebrew-tap
brew install --cask runenv
```

Apple verifies all binaries distributed here. The downloaded `.dmg` is cryptographically signed and officially **notarized by Apple** to cleanly bypass Gatekeeper's "Unidentified Developer" warnings.

## 🔄 Updates & Upgrading

The RunEnv Desktop application automatically listens for new versions and will prompt you to update within the app. However, if you prefer terminal package management:

```bash
brew upgrade --cask runenv
```

### Common Issue: "latest version is already installed"
Homebrew's background JSON API cache can occasionally fall out of sync with this repository. If you know a new version has been released but Homebrew refuses to upgrade your app:
```bash
# 1. Force Homebrew to fetch the newest Ruby package manifests
brew update

# 2. Force reinstall the application from the fresh manifest
brew reinstall --cask Jambo-company/tap/runenv
```

## 🗑️ Uninstallation

To cleanly remove the application and untap the repository from your system:

```bash
brew uninstall --cask runenv
brew untap Jambo-company/tap
```

## 🐛 Issues & Support

Since this Tap is fully automated by the CI/CD pipeline of the core platform, **do not open Pull Requests** directly here to bump version numbers.

If you experience an issue with the application itself, please file a ticket at the primary monorepo: [github.com/Jambo-company/runenv/issues](https://github.com/Jambo-company/runenv/issues)
