# Setting up a new computer

I really only have `./apps.sh` and `./devtools.sh` working right now. I wouldn't run this whole script just yet.

My personal installation script for a new computer.

Note, this sets up an extremely opinionated and highly personalized installation, with my preferences and dotfiles. Please adjust as needed!


Some resources borrowed from:

- https://github.com/ruyadorno/installme-osx/
- https://gist.github.com/millermedeiros/6615994
- https://gist.github.com/brandonb927/3195465/

## Install from script:

Open the terminal, then:

```sh
bash -c "`curl -L https://raw.githubusercontent.com/rianrainey/new-computer/refs/heads/master/setup.sh`"
```
---


# Manual Configuration

These apps need to be configured manually.

For OSX settings, I'm still looking for the command line way to change this preference.

##### App Section

Checked:

- Start at login

Unchecked:

- Show in menu bar

#### Iterm2

* Iterm2 -> Preferences -> General
	* Check: Load preferences from custom folder /Users/nina/dotfiles/iterm-profiles
	* Check: Save changes to folder when Iterm2 quits

#### System Preferences Configuration

**Users & Groups**

* make sure guest account is turned off

**Keyboard**

* Delay until repeat = short
* Key repeat repeat = fast
* Modifier Keys
  * Caps Lock -> ^ Control (do this for every keyboard)
  * Dictation
    * Change right command key twice to invoke microphone
* Turn off spotlight (use Alfred instead)
	* Keyboard -> Shortcuts -> Spotlight -> Deselect all
* Shortcuts
  * Spotlight
    * turn off `Show Spotlight search`
    * turn off `Show Finder search window`

**General**

* Recent items: None
* Appearance: Graphite
* Highlight color: Pink

**Mission Control**

* Dashboard: As Overlay

**Trackpad**

* Tracking speed: Fast
* Tap to click: ON
* Secondary click: Click/Tap with Two Fingers

**Display**

* Night Shift -> Schedule -> Sunset to Sunrise

**Security & Privacy**

* Firewall -> on
* Firewall options -> Enable stealth mode
* FileVault -> Turn On FileVault (encrypt harddrive)

**Sharing**

* Ensure everything is unchecked

**Finder Preferences**

* General
	* New finder window show: home folder
* Sidebar
	* Show home, remove Recents
* Advanced
	* Show all filename extensions: ON
	* Show warning before changing an extension: OFF
	* Show warning before emptying the trash: OFF

**Appearance**

Dark

**Control Center**

* Menu Bar Only
** Siri - Don't show in menu


#### Chrome

* Sign into chrome to sync profile & bookmarks
* Chrome -> Warn before quitting: ON

#### 1Password

- Settings > Privacy & Security > Accessibility > Turn on 1password so I can use keyboard shortcuts
- Change keyboard shortcut to `cmd + shift + c`

#### Alfred

* Set `cmd + space` to Alfred hotkey
* Set up alfred powerpack
-- Pull license from 1password

#### Dash

* Download
* docs for:
	*
	*
	*
	*
	*
	*
	* man pages
* cheatsheets for:
	* git

#### Todos
