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

## Installation

* Download the latest release and cores zip pack from the release link to the right (e.g. ruka-s30-20210729.zip, s30-cores-20210727.zip)
* Get a FAT32 formatted SD card and: 
  * extract the contents of the release zip into that
  * extract the contents of the cores package into the cores folder  
  * The file structure should look like this:
* If you used an existing SD card with your roms in it, just make sure they are in the same folder structure (e.g. roms/mame)
* Insert the SD into your S30, power it up

* [Ruka Custom Firmware Installation Guide](install.md)


## Notes
* You can uncompress the zip file on top of your existing SDCard, however the bin/gmenu2x file will be overwritten. Just make a copy of that if you want to reuse. You can easily put the original one back and everything will be back to normal.
* Roms folder structure for EmulationStation is the same as the one used in all batocera images. If you already have a batocera SDcard with your content for another device, you can just extract our installation on top of that and you can reuse the content. Note that you will need to changes paths in config/emulationstation/es_systems.cfg to match the /mnt/extsd folder that the S30 uses as the sdcard mount point.
* Please review the [issue page](https://github.com/Ruka-CFW/s30-cfw/issues) and if you see a new one open a new issue from that page
* If you want to contribute to this project, read the [How to Contribute](CONTRIBUTING.md)

## Known Issues
* RetroArch 1.9.7 load core/load content is currently broken (since 1.9.2 where a massive refactorization happened). However it works fine via EmulationStation or if you launch a core/rom combination directly (e.g. retroarch -L <core> <rom>)
* PPSSPP games are rotated but the menu is not
* Several cores/ports may require custom control configuration, please use the issues to add your configurations, etc. so we can include those in future releases.
* Our SDL2 patches rotate most of the SDL2 2D based games that use fullscreen. If you want to try a different port or engine, you may need to pass the fullscreen or force the resolution to 480 320 to get it to render properly

## Acknowledgements

* [@bkacjios](https://github.com/bkacjios) for his original RetroArch and SDL2 rotation patches
* [@fcorbier](https://github.com/fcorbier/sm64ex) for his rotation patches on sm64ex, those were really helpful to get our SDL2 rotation right
* [Bruma](https://www.youtube.com/channel/UCrdNisYjDd7qI1Zv2ZLwBrQ) for posting the original teaser video on youtube
* [Retrolocatis](https://www.youtube.com/watch?v=a9pKh0gti3s&t=3597s) for trusting on us to get this hack out so it will get to the top 1 :)
* RGC's SimpleS30 for showing us the path to this hack 
* Rutjoni, for forcing our hand to buy this device... and several others... you were right :)
* The folks at the [#pocket-go-s30 RG discord channel](https://discord.com/channels/529983248114122762/779295877951914005)
* All the folks that have been enjoying our releases
* And of course, all the rest of the ruka team, you know who you are

