# System utilities


System utilities.

<!--more-->

## Bottom

[Bottom](https://github.com/clementtsang/bottom), a resource monitor written in Rust.

- [Binary release](https://github.com/ClementTsang/bottom/releases)
- [AUR](https://aur.archlinux.org/packages/bottom/)
  ```bash
  paru -S bottom
  ```

Usage: run `btm`.

## Bpytop

[Bpytop](https://github.com/aristocratos/bpytop), a resource monitor that shows usage and stats for processor, memory, disks, network and processes. Written in Python.

- Deb repository
  ```bash
  curl -fsSL https://azlux.fr/repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/azlux.gpg
  echo "deb [signed-by=/usr/share/keyrings/azlux.gpg] http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list > /dev/null
  sudo apt update && sudo apt install bpytop
  ```
- [snap](https://snapcraft.io/bpytop)
  ```bash
  sudo snap install bpytop
  ```
- `pip`
  ```bash
  pip install --user -U bpytop
  ```
- `pacman`
  ```bash
  sudo pacman -S bpytop
  ```

Usage: run `bpytop`.


## Glances

[Glances](https://nicolargo.github.io/glances/) is an cross-platform advance system monitor for usage monitoring for CPU, RAM, Network, GPU, etc.

- Official installation script
  ```bash
  curl -L https://bit.ly/glances | bash
  ```
- `pacman`
  ```bash
  sudo pacman -S glances
  ```
- `pip`
  ```bash
  pip install glances --upgrade --user

  pip install glances[gpu] --upgrade --user
  ```

## Timeshift

[Timeshift](https://github.com/teejee2008/timeshift) is a system backup and restore manager using `rsync` or `btrfs` snapshots.

- Via `apt`
  ```bash
  sudo apt install timeshift
  ```
- Via [AUR](https://aur.archlinux.org/packages/timeshift/)
  ```bash
  paru -S timeshift cronie
  # You may or may not need this step
  sudo systemctl enable --now cronie.service
  ```

