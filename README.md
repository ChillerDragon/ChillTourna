ChillTourna
-----------

A block tournament mod.
Based on DDraceNetwork which is a mod of teeworlds.

Tiles
-----

Default spawn (192) - lobby

Red spawn (193) - tournament arena

Tourna winner (93) - end screen winner area

Tourna looser (109) - end screen looser area

Config & Commands
-----------------

Config:

``sv_tourna_min_players`` How many players are required to start a tournament 0=off autostart

``sv_tourna_start_hour`` Start tournament on specific hour ( combines with sv_tourna_start_minute )

``sv_tourna_start_minute`` Start tournament on specific minute ( combines with sv_tourna_start_hour )

``sv_tourna_scorelimit`` How many score points are required to win a round

``sv_allow_selfkill`` To deactive selfkill ( less problems with accidental selfkills in tournaments )

Chat commands:

``/fight <player1> <player2>`` for admins to start a 1 on 1 with the given 2 players

``/tournament start`` for admins to start a automated tournament

``/tournament score`` check the results for the last few games

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
