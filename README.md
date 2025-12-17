# i3lock digital clock

i3lock-color wrapper that renders a lock screen background with transparency effect using convert tool.

## Dependencies

### Arch Linux:

```sh
sudo pacman -S --needed imagemagick i3lock-color
```
## Installation

```sh
mkdir -p i3lock
curl -fsSL https://github.com/dersevi403/i3lock-clock/archive/refs/tags/v1.0.0.tar.gz \
 | tar xz -C i3lock --strip-components=1
```

```sh
cd i3lock
chmod +x i3lock-clock update-lockbg
```

## Usage
```sh
./i3lock-update-bg -i sample-bg.jpg -b 0x6
```
```sh
./i3lock-clock
```
