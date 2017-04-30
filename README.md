# TODO

- remove global fonts `rm /Library/Fonts/Roboto*`
- convert remaining install scripts
- remove execute script and functions script
- cleanup readme
- install firefox from cask?

# Install

## Pre-setup

1. Download XCode from App Store
2. Open XCode to install components

## Script

Navigate to the project root and run:

`sh execute.sh install`

If brew fails with XCode error this may fix the problem:
`sudo xcode-select -s /Applications/Xcode.app/Contents/Developer`

## Manual

### Terminal

- Control-click and open terminal/Solarized Dark.terminal
- Open Terminal preferences and make "Solarized Dark" the default profile
- Disable: Edit > Marks > Automatically Mark Prompt Lines

### Vim

- :PlugInstall

### MacVim

- Open MacVim; Edit > Font; Change to Roboto Mono

# Uninstall

`sh execute.sh remove`
