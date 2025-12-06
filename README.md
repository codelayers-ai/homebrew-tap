# Homebrew Tap for CodeLayers CLI

Official Homebrew tap for [CodeLayers](https://codelayers.ai) - a zero-knowledge code visualization platform for Vision Pro.

## Installation

```bash
brew tap codelayers-ai/codelayers
brew install codelayers
```

## Upgrade

```bash
brew upgrade codelayers
```

## Uninstall

```bash
brew uninstall codelayers
brew untap codelayers-ai/codelayers
```

## Usage

```bash
# Authenticate with your 12-word mnemonic
codelayers login

# Sync a repository
codelayers sync /path/to/your/repo

# Watch mode with P2P server for Vision Pro
codelayers watch /path/to/your/repo

# Watch with AI agent integration
codelayers watch /path/to/your/repo --agent claude
```

## Requirements

- macOS 13.0 or later
- Apple Silicon - Intel Macs are not supported

## Links

- [CodeLayers Website](https://codelayers.ai)
- [Vision Pro App](https://apps.apple.com/app/codelayers)
- [Documentation](http://codelayers.ai/docs)

## License

Proprietary - © 2025 CodeLayers
