![image](https://user-images.githubusercontent.com/67930710/117461690-22bc2e80-af4e-11eb-8ac5-240f600ebe39.png)

# PocketGo S30 Custom Firmware 

This is our overlay CFW or the S30, just uncompress the SD zip folder at the top of an SD card, add the [cores](https://github.com/Ruka-CFW/s30-cfw/releases/tag/s30-cores-20210727), your games, and you are ready to play.

Our CFW is based on a subset of the [Batocera linux](https://github.com/batocera-linux/batocera.linux) as we do for our other [firmwares](https://github.com/Ruka-CFW/rk3128-cfw).

## Features:
* EmulationStation
* RetroArch v1.9.7
* OpenBOR
* Daphne
* DevilutionX
* PPSSPP
* SDLPoP

## Documentation

* [Ruka Custom Firmware Installation Guide](install.md)
* [How to Contribute](CONTRIBUTING.md)

## Known Issues
* RetroArch 1.9.7 load core/load content is currently broken (since 1.9.2 where a massive refactorization happened). However it works fine via EmulationStation or if you launch a core/rom combination directly (e.g. retroarch -L <core> <rom>)
* PPSSPP games are rotated but the menu is not
* Several cores/ports may require custom control configuration, please use the issues to add your configurations, etc. so we can include those in future releases.

## Acknowledgements

* (@bkacjios)[https://github.com/bkacjios] for his original RetroArch and SDL2 rotation patches
* (Bruma)[https://www.youtube.com/channel/UCrdNisYjDd7qI1Zv2ZLwBrQ] for posting the original teaser video on youtube
* All the rest of the ruka team, you know who you are
* The folks at the [#pocket-go-s30 RG discord channel](https://discord.com/channels/529983248114122762/779295877951914005)
* All the folks that have been enjoying our releases
