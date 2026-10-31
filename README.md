# Wox for Omarchy

An Omarchy Shell service that opens or hides the Wox launcher. Wox is a separate application and must be installed and started before this plugin can be used. The plugin does not install Wox or add a bar widget.

## Requirements

- Omarchy 4 with Omarchy Shell
- [Wox](https://www.woxlauncher.com/) installed and running, with its `wox://` URL handler registered
- `gio` (provided by the `glib2` package)

## Install Wox

Install Wox from the AUR on Omarchy:

```sh
omarchy pkg aur add wox-bin
```

Start Wox and complete its initial setup before using the plugin. Check that the AUR package provides the desired version; Wox 2.4.9 adds Omarchy theme and menu integration. You can check whether the URL handler is registered with:

```sh
xdg-mime query default x-scheme-handler/wox
```

The command should print the name of a desktop entry. If it prints nothing, ensure Wox is installed and its URL handler is registered before continuing.

## Install the plugin

```sh
omarchy plugin add https://github.com/Wox-launcher/omarchy-wox.git --enable
```

Invoke the service with:

```sh
omarchy-shell io.github.wox-launcher.wox toggle
```

Wox also registers its own configurable global shortcut; the default on a new Omarchy installation is Alt+Space.

## Remove

```sh
omarchy plugin remove io.github.wox-launcher.wox
```

This removes the Omarchy plugin. Uninstall Wox separately if desired.
