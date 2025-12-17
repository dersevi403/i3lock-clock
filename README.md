# i3lock digital clock

i3lock-color wrapper that renders a lock screen background with transparency effect using convert tool.

`dependencies:
i3lock-color;imagemagick`

## Dependencies

### Arch Linux:

```sh
sudo pacman -S --needed imagemagick i3lock-color
```
## Installation

```sh
curl -fsSL https://github.com/dersevi403/i3lock-clock/archive/refs/tags/v1.1.0.tar.gz \
 | tar xz && cd i3lock-clock-*

```
```sh
chmod +x i3lock-clock update-lockbg
cp i3lock-clock update-lockbg ~/.local/bin
```

## Usage
```sh
update-lockbg -i sample-wall.jpg -b 0x6
```
```sh
i3lock-clock
```

## Uninstall

```sh
sudo pacman -Rs i3lock-color
rm ~/.local/bin/{i3lock-clock,update-lockbg}
```
