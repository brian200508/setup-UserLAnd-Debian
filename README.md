# setup-UserLAnd-Debian
Post install script for installing Chromium browser, VSCode and some developer stuff.

## Prerequisites
- Install UserLAnd from Google Play Store (https://play.google.com/store/apps/details?id=tech.ula) or directly from UserLAnd Github repo (https://github.com/CypherpunkArmory/UserLAnd).
- Perform standard Graphical Debian installation with VNC and XFCE (or LXDE).

## Do post-install
Download and execute the post-installation script; for example in the Temrinal window opened by default:

```bash
sudo apt update -y && sudo apt install -y git && git clone https://github.com/brian200508/setup-UserLAnd-Debian.git
```

```bash
chmod +x ./setup-UserLAnd-Debian/setup-UserLAnd-Debian.sh && ./setup-UserLAnd-Debian/setup-UserLAnd-Debian.sh
```

## Optionally delete Your local clone of this Repo
```bash
rm -rf ./setup-UserLAnd-Debian
```

That's it ;)
