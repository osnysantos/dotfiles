# Osny's dotfiles

## MacOS Preferences

If this is a new computer, there are a couple tweaks I like to make to the System Preferences. Feel free to follow these, or to ignore them, depending on your personal preferences.

In **Apple Icon > System Preferences**:

- Trackpad > Point & Click - Enable Tap to click with one finger
- Trackpad > Point & Click - Tick Silent Clicking
- Trackpad > Scroll & Zoom > Uncheck Scroll Direction: Natural
- Keyboard > Key Repeat > Fast (all the way to the right)
- Keyboard > Delay Until Repeat > Short (all the way to the right)
- Keyboard > Modifiers Keys > Remap Caps Lock key to Control
- Keyboard > Text > Uncheck Correct spelling automatically
- Keyboard > Text > Uncheck Capitalize words automatically
- Keyboard > Text > Uncheck Add period with double-space
- Keyboard > Text > Uncheck Use smart quotes and dashed

Others preferences:

- Dock > Automatically hide and show the Dock
- Finder > Advanced > Show all filename extensions
- Finder > General > Select the home directory to show when opening a new tab
- Finder > View > Show Status Bar
- Finder > View > Show Path Bar
- Finder > View > Show View Options >
- Finder > Sidebar > Show Home Directory in the Sidebar
- Finder > Always show Hidden and Invisible Files (by Command Line): ```defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder```


## Homebrew - Applications

I use Homebrew to easily install at once all my Applications I use in my day to day. Please check [install.sh](/homebrew/install.sh) file to see all the Packages.
To install, just run this code:

```bash
./homebrew/install.sh
```

## Sublime Text

```bash
./sublime-text/install.sh
```

## Atom


## Manual Application Settings

### Terminal: iTerm2

- Don’t display the annoying prompt when quitting iTerm
- Profiles > Default > Reuse previous session's directory

### Google Chrome

## Mac App Store Apps to Install

## Manual Development Settings
