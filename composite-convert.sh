convert input.jpg \
		-blur 0x6 \
		\( box.png -gravity center -geometry +0-50 \) \
		-composite \
		lock.png
