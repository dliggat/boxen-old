# Dave Liggat's Boxen

This is a fork of Github Inc's [Boxen](https://boxen.github.com).

## Why?

* Fully automate and replicate machine state between Macs.
* Easier, reproducible setup of future machines

## Important stuff I'm likely to forget:

* Master site file: https://github.com/liggsie/boxen/blob/master/manifests/site.pp
* OS X configuration (`defaults write` entries): https://github.com/liggsie/boxen/tree/master/modules/osx_config/manifests
* My personal profile (which does all the inclusions): https://github.com/liggsie/boxen/blob/master/modules/people/manifests/liggsie.pp
* Apps, gems, ST2 settings, etc for my machines: https://github.com/liggsie/boxen/tree/master/modules/people/manifests/liggsie/applications
  * The main file contains applications to install and homebrew packages: https://github.com/liggsie/boxen/blob/master/modules/people/manifests/liggsie/applications/main.pp
* Login items, dotfile symbolic link setup: https://github.com/liggsie/boxen/tree/master/modules/people/manifests/liggsie/config
* Actual dotfiles, a separate repo: https://github.com/liggsie/dotfiles
* Project specific manifests: https://github.com/liggsie/boxen/tree/master/modules/projects/manifests

## Setting up on a new machine

TODO: I haven't actually done this yet, so this section needs tweaking.

* Install XCode, and the XCode Command Line Tools (necessary to bootstrap everything else)
* Make a new `/opt/boxen/repo` and clone it:
```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/liggsie/boxen.git /opt/boxen/repo
cd /opt/boxen/repo
script/boxen
```
* May need to `git pull` the dotfiles directory (Will be stored in `~/src/dotfiles`). Regardless the boxen command will set up the symnbolic links.
* Restart the machine - may be necessary to update the Dock, Finder, mouse settings, etc.
* Install Mac App Store stuff.

## Installing a new app (e.g. firefox)

* Don't download the dmg like an idiot.
* Edit the Puppetfile (`1.1.1` refers to a git tag from the github.com/boxen package)
  * `github "firefox",        "1.1.1"`

* Include firefox in `modules/people/manifests/liggsie/applications/main.pp`:
```
class people::liggsie::applications::main {

  include alfred
  include chrome
  include dropbox
  include firefox
  ...
```
* `script/boxen`. Huzzah!

## Halp!

See [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md).

Use Issues or #boxen on irc.freenode.net.

## Credit

Special thanks to @ndhoule, [whose public boxen](https://github.com/ndhoule/my-boxen) I've made a pretty heavy borrowing of.
