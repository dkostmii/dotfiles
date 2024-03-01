# dotfiles

This repository contains dotfiles for my common tools.

## Documentation index

| Module                     |
| -------------------------- |
| [Waybar](waybar/README.md) |

## Installation

> **Note**
> This config is only tested on Arch Linux.

1. Install config dependencies:

    Install dependencies from Arch Linux Packages:

    ```bash
    pacman -S alacritty brightnessctl cava dunst felix fish foot hyfetch hyprland hyprpaper i3 kitty lib32-pipewire mpv neovim pamixer pavucontrol pipewire pipewire-audio pipewire-pulse polkit-kde-agent qt5-wayland qt5ct qt6-wayland rofi rofimoji sway swaybg swayidle wireplumber wlsunset xdg-desktop-portal-hyprland zoxide
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
    yay -S blugon cava gojq hyprshot i3lock-color libcava nwg-bar-bin swaylock-effects tofi waybar-cava
    ```

2. Fork this repository.

    > You can skip this step, if it's throw-away setup.

3. Clone forked repository into your `~/.config` dir.
Example for this repository is shown:

    ```bash
    git clone https://github.com/dkostmii/dotfiles.git ~/.config
    ```

4. Logout from your current DE or WM and log in to Hyprland.

And you're all set! Customize this configuration to suit your needs.
