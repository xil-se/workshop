# NodeMCU - IoT on the cheap
How to get started with the NodeMCU/ESP8266


## Linux

## Windows

    ESP8266 Flasher
    LUA Loader 

## Mac / Linux

    esptool
    UART Driver
    esplorer 

Command-line to flash firmware

esptool.py -p /dev/ttyUSB0 write_flash 0x000000 Downloads/nodemcu.bin


## NodeMCU Firmware Binary

    nodemcu-dev-14-modules-2015-11-02-23-45-27-float.bin 

## Sample LUA Scripts
Rename either one of these files to init.lua and upload it to the NodeMCU board.
 * [First Wifi Demo (rename to init.lua)](https://gist.github.com/robertfoss/2291a9beb9bb889acc8b/raw/5d0d6b7eba2021401cde19abd11e9accd3807477/get_ip.lua)
 * [Web Server Sample](https://gist.github.com/robertfoss/2291a9beb9bb889acc8b/raw/5d0d6b7eba2021401cde19abd11e9accd3807477/webserver.lua)

## Other Resources

 * [NodeMCU Custom Builds](http://frightanic.com/nodemcu-custom-build/)
 * [Buy more of the DEV boards, ~$4 inlcuding shipping](http://www.aliexpress.com/item/New-Wireless-module-NodeMcu-Lua-WIFI-Internet-of-Things-development-board-based-ESP8266-with-pcb-Antenna/32299982691.html?ws_ab_test=searchweb201556_6,searchweb201644_1_79_78_77_82_80_62_81,searchweb201560_4)
