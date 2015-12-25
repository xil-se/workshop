# NodeMCU - IoT on the cheap
How to get started with the NodeMCU/ESP8266

## Tools
 * ESPlorer
 * [Win] [ESP8266 Flasher](https://github.com/nodemcu/nodemcu-flasher/blob/master/Win32/Release/ESP8266Flasher.exe)
 * [Linux/OSX] [esptool](https://github.com/themadinventor/esptool)
 * [OSX] USB-Serial driver [CP2102 driver](https://www.silabs.com/Support%20Documents/Software/Mac_OSX_VCP_Driver.zip)
 * [Windows] USB-Serial driver [CP2102 driver](https://www.silabs.com/Support%20Documents/Software/CP210x_VCP_Windows.zip)

## Linux


## Mac / Linux

    esptool
    UART Driver
    esplorer 

## Windows

  1)
    LUA Loader 


Command-line to flash firmware

esptool.py -p /dev/ttyUSB0 write_flash 0x000000 Downloads/nodemcu.bin


## NodeMCU Firmware Binary

[nodemcu_1.4.bin](https://github.com/xil-se/nodemcu_iot_on_the_cheap/raw/master/nodemcu_1.4.bin)

**WARNING: This NodeMCU image is not built with all the modules that NodeMCU supports and are listed online. Please make a new image that contains the modules you need. Visit for [1] for a service that will do just that for you.**

## Sample LUA Scripts
Rename either one of these files to init.lua and upload it to the NodeMCU board.
 * [Get IP sample](https://raw.githubusercontent.com/xil-se/nodemcu_iot_on_the_cheap/master/get_ip.lua)
 * [Setup WiFi sample](https://raw.githubusercontent.com/xil-se/nodemcu_iot_on_the_cheap/master/setup_wifi.lua)
 * [Web Server sample](https://raw.githubusercontent.com/xil-se/nodemcu_iot_on_the_cheap/master/webserver.lua)

## Other Resources

 [1][NodeMCU Custom Builds](http://frightanic.com/nodemcu-custom-build/) - Have a custom NodeMCU version built with all the modules that you need
 
 [2][NodeMCU API](https://github.com/nodemcu/nodemcu-firmware/wiki/nodemcu_api_en) - Have a look at all of the modules and function calls supported by NodeMCU

 [3][Buy NodeMCU boards](http://www.aliexpress.com/item/New-Wireless-module-NodeMcu-Lua-WIFI-Internet-of-Things-development-board-based-ESP8266-with-pcb-Antenna/32299982691.html?ws_ab_test=searchweb201556_6,searchweb201644_1_79_78_77_82_80_62_81,searchweb201560_4) - The boards are ~$4 including shipping from China. 
