# Pacman package management


Managing `pacman` packages in Arch Linux and its derivatives (Manjaro, enOS).

<!--more-->

## Generating a list of packages

List non-AUR, explicitly installed packages:

```bash
pacman -Qnqe > pkgs.txt
```

List AUR packages:

```bash
pacman -Qqem > aurpkgs.txt
```

List all explicitly installed packages:

```bash
pacman -Qqe > allpkgs.txt
```

## Install packages from a list

```bash
paru  # Full upgrade the system first
paru -S --needed - < pkgs.txt
```

## Compilation options for AUR packages

To customize compilation options, a good starting point is to copy from the system-wide config file:

```bash
cp /etc/makepkg.conf ~/.makepkg.conf
```

to you own `~/.makepkg.conf` [makepkg@ArchWiki](https://wiki.archlinux.org/index.php/Makepkg). However,  `PKGBUILD` settings still have higher priority.

### CPU target for building optimized binaries

```txt
CFLAGS="-march=native -O2 -pipe -fstack-protector-strong -fno-plt"
CXXFLAGS="${CFLAGS}"
RUSTFLAGS="-C opt-level=2 -C target-cpu=native"
```

### Parallel compilation

```txt
MAKEFLAGS="-j$(nproc)"
```

### Compressing packages

```txt
# multiple cores on compression of xz archives
COMPRESSXZ=(xz -c -z - --threads=0)

# multiple cores on compression of zstd archives
COMPRESSZST=(zstd -c -z -q - --threads=0)

# multiple cores on compression of gz archives (requires pigz package)
COMPRESSGZ=(pigz -c -f -n)
```

And you can choose the preferred method for package compression

e.g.
```bash
PKGEXT='.pkg.tar.zst'
```

Or turn off compression completely (fastest)
x
```bash
PKGEXT='.pkg.tar'
```



