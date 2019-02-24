ChillTourna
-----------

A block tournament mod.
Based on DDraceNetwork which is a mod of teeworlds.

Cloning
-------

To clone this repository with full history and external libraries (~350 MB):

    git clone --recursive https://github.com/ChillerDragon/ChillTourna


Building on Linux and macOS
---------------------------

To compile DDNet yourself, execute the following commands in the source root:

    mkdir build
    cd build
    cmake ..
    make

DDNet requires additional libraries, that are bundled for the most common platforms (Windows, Mac, Linux, all x86 and x86\_64). The bundled libraries are now in the ddnet-libs submodule.

You can install the required libraries on your system, `touch CMakeLists.txt` and CMake will use the system-wide libraries by default. You can install all required dependencies and CMake on Debian or Ubuntu like this:

    sudo apt install cmake git libcurl4-openssl-dev libfreetype6-dev libglew-dev libogg-dev libopus-dev libopusfile-dev libpnglite-dev libsdl2-dev libwavpack-dev python

Or on Arch Linux like this (Arch Linux does not package `pnglite`, not even in AUR):

    sudo pacman -S --needed cmake curl freetype2 git glew opusfile sdl2 wavpack python

If you have the libraries installed, but still want to use the bundled ones instead, you can do so by removing your build directory and re-running CMake with `-DPREFER_BUNDLED_LIBS=ON`, e.g. `cmake -DPREFER_BUNDLED_LIBS=ON ..`.
