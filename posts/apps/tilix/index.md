# Tilix shel emulator


[Tilix](https://gnunn1.github.io/tilix-web/) is an advanced GTK3 tiling terminal emulator.

<!--more-->

## Installation

The following script installs `tilix` and `python-nautilus` for `Open tilix here` context menu in the Nautilus file manager.

### Ubuntu (and derivatives)

```bash
sudo apt install tilix

[[ -x $(command -v nautilus) ]] && sudo apt install python-nautilus
```

### Arch (and derivatives)

```bash
sudo pacman -S tilix
[[ -x $(command -v nautilus) ]] && sudo pacman -S python-nautilus
```

## Set tilix as the default GUI terminal emulator

### Ubuntu (and derivatives)

```bash
sudo update-alternatives --config x-terminal-emulator
```

### Arch (and derivatives)

Select in `Prefered applications`.

