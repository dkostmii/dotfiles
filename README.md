# dotfiles

This repository contains dotfiles for my common tools.

## Documentation index

| Module                     |
| -------------------------- |
| [Waybar](waybar/README.md) |
| [Bemenu](bemenu/README.md) |

## Installation

> **Note**
> This config is only tested on Arch Linux.

1.  Install config dependencies:

    Install dependencies from Arch Linux Packages:

    ```bash
    pacman -S bemenu-wayland brightnessctl cava dunst felix fish gammastep hyfetch hyprland hyprpaper kitty lib32-pipewire mpv neovim pamixer pavucontrol pipewire pipewire-audio pipewire-pulse polkit-kde-agent qt5-wayland qt6-wayland swayidle wireplumber xdg-desktop-portal-hyprland waybar zoxide
    ```

    `pipewire-pulse` is used as a replacement for `pulseaudio`.
    If you need the latter, just use `pulseaudio` and `pulseaudio-bluetooth`
    packages<sup>[\[1\]](https://wiki.archlinux.org/title/PipeWire#PulseAudio_clients)</sup>.

    Assuming you use [Jguer/yay](https://github.com/Jguer/yay),
    install next dependencies from AUR:

    > **Note**
    > Some packages will be in conflict with existing.
    > Assuming the removal of existing packages.

    ```bash
    yay -S bemoji cava gojq hyprshot libcava nwg-bar-bin swaylock-effects tofi
    ```

2.  Fork this repository.

    > You can skip this step, if it's throw-away setup.

3.  Clone forked repository into your `~/.config` dir.
    Example for this repository is shown:

        ```bash
        git clone https://github.com/dkostmii/dotfiles.git ~/.config
        ```

4.  Logout from your current DE or WM and log in to Hyprland.

And you're all set! Customize this configuration to suit your needs.
