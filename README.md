homebrew-golem-dev
=================

Homebrew + Caskroom recipes for Golem.

## Requirements
- __A public IP address or forwarded TCP ports: 40102, 40103 and 3282__ (see [installation notes](https://github.com/golemfactory/golem/wiki/Installation)).

- Mac OS X 10.10 (Yosemite) or later.

- [Homebrew](https://brew.sh/) - The missing package manager for Mac OS.

## Installation

### 1. Uninstall an official version / development version
* Remove cached Homebrew files `sudo rm -rd ~/Library/Caches/Homebrew/*`
* Remove docker images `sudo rm -rd ~/.docker/machine/machines/golem/*`.
```
brew cask uninstall golem-mainnet-launcher
brew cask uninstall golem
brew uninstall --force golem
brew untap golemfactory/golem
```

### 2. Install the development version
```
brew tap golemfactory/golem-dev
brew cask install golem

# docker-machine-driver-xhyve package needs root owner and a suid bit
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
```
Please keep in mind that Golem depends on many packages. Therefore, the installation varies on the computer. Some of the packages may already be installed on your computer and the others have to be linked. A typical example is the `docker-machine` package, which provides `brew link docker-machine`. After linking, you must restart Golem installation.

## Running Golem
Type `golem` into Spotlight or select `golem` from Applications.

__Golem is still under development and is not signed with a valid signature.
The first time you run Golem, your Mac OS X system will surely shout out that it cannot be opened because the software is from an undefined developer. To work around the problem please double click the application from Applications folder in Finder together with `control` key. Subsequently, click `open`.__

## Reinstallation
```
brew tap golemfactory/golem-dev
brew cask reinstall golem
```

## Upgrading
```
brew update && brew upgrade
```

## Removing
```
brew cask uninstall golem-mainnet-launcher
brew cask uninstall golem
brew uninstall golem
```

## Info and Versions
Print information about installed Golem (including dependencies) with:
```
brew info golem
```

List available versions with:
```
ls -l /usr/local/Cellar/golem
```

## Troubleshooting

* Use `--verbose` to get more info while installing.
* Remove cached Homebrew files `sudo rm -rd ~/Library/Caches/Homebrew/*`
* Run `brew update && brew upgrade`.
* Fix what the `brew doctor` says.
* Remove docker images `sudo rm -rd ~/.docker/machine/machines/golem/*`.
* Remove LOCK file `sudo rm ~/Library/Application\ Support/golem/default/LOCK`.
