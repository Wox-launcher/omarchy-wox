# Wox for Omarchy

An Omarchy Shell service that opens or hides the Wox launcher. It does not add a bar widget.

## Requirements

- Omarchy 4 with Omarchy Shell
- [Wox](https://www.woxlauncher.com/) installed, with its `wox://` URL handler registered
- `gio` (provided by the `glib2` package)

Install Wox on Arch Linux using `yay -S wox-bin`, then start it and finish its initial setup.

## Install

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
