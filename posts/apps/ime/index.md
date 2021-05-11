# Input methods


Typing Chinese in Linux.

<!--more-->

## Fcitx

[Fcitx](https://wiki.archlinux.org/index.php/Fcitx) is a lightweight input method framework aimed at providing environment independent language support for Linux. The development energy is mainly focused on the new [version 5](https://wiki.archlinux.org/index.php/Fcitx5) release.

- By `pacman`
  ```bash
  sudo pacman -S fcitx5-im fcitx5-chewing fcitx5-material-color
  ```
- By `apt` (Ubuntu 21.04+)
  ```bash
  sudo apt install fcitx5 fcitx5-chewing  citx5-material-color
  ```

{{< admonition type=info title="If fcitx5 does not work properly" >}}

Attach these lines to `~/.xprofile` or `~/.profile`.

```bash
export INPUT_METHOD=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=\@im=fcitx5
```

{{< /admonition >}}


## ibus

[ibus](https://github.com/ibus/ibus) is an input method framework using DBUS. `ibus` integrates with gnome.

- By `apt`
  ```bash
  sudo apt install ibus ibus-chewing
  ```
- By `pacman`
  ```bash
  sudo pacman -S ibus ibus-chewing
  ```

{{< admonition type=info title="If ibus does not work properly" >}}

Attach the following lines to `~/.xprofile` or `~/.profile`.

```bash
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
```

{{< /admonition >}}

{{< admonition type=tip title="Change ibus system tray icon color" >}}

Using `dconf`[^ibus-color]

```bash
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba ${COLOR}
```

[^ibus-color]: https://wiki.archlinux.org/index.php/IBus#Systray_language_icon_color

{{< /admonition >}}

