# Martins dotfiles

## Setup
Install `ansible` and run `ansible-playbook -K [--tags home,work ] setup.yaml`.

## EMACS
Inspiration:

- <https://github.com/FrostyX/dotfiles>
- <https://github.com/daviwil/dotfiles/blob/master/Emacs.org>

All the interesting stuff is handled in [martin.org](.emacs.d/martin.org)
which is loaded from [init.el](.emacs.d/init.el).

## Niri
[Niri](https://github.com/YaLTeR/niri) - the scrollable-tiling Wayland
compositor - is complemented by a range of tools. They all follow the XDG
standard of having configuration in `~/.config`.

- [Waybar](https://github.com/Alexays/Waybar) for configuring a top bar
- [Kanshi](https://gitlab.freedesktop.org/emersion/kanshi) to handle multiple
  displays automatically
- [swaybg](https://github.com/swaywm/swaybg) for the all important background
  image
