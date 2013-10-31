all:
	make setup
	make build

setup:
	sudo apt-get install build-essential xorg-dev libudev-dev libts-dev libgl1-mesa-dev libglu1-mesa-dev libasound2-dev libpulse-dev libopenal-dev libogg-dev libvorbis-dev libaudiofile-dev libpng12-dev libfreetype6-dev libusb-dev libdbus-1-dev zlib1g-dev libdirectfb-dev
	wget "http://www.libsdl.org/release/SDL2-2.0.1.tar.gz" -O sdl
	tar -xvzf sdl
	rm sdl
	cd SDL2-2.0.1
	sudo make install
	sudo ldconfig
	cd ..


build:
	g++ main.cpp -lSDL2 -o thing
	./thing
