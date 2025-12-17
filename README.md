# i3lock-clock

i3lock-color wrapper that renders a clock overlay on the lock screen.

## Dependencies

### Arch Linux:

```sh
sudo pacman -S --needed imagemagick i3lock-color##install

## Installation

```sh
mkdir -p i3lock-clock 
curl -fsSL https://github.com/dersevi403/i3lock-clock/archive/refs/tags/v1.0.0.tar.gz \ | tar xz -C i3lock-clock --strip-components=1

cd i3lock-clock 
chmod +x i3lock-clock i3lock-update-bg

## Usage

```sh
./i3lock-update-bg -i [sample-bg.jpg] -b [0x6]
./i3lock-clock
