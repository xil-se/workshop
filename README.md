# NodeMCU - IoT on the cheap
How to get started with the NodeMCU and the ESP8266 chip it contains.

## Tools
 * [ESPlorer](http://i1.wp.com/esp8266.ru/images/download.gif?zoom=1.5&w=625)
 * [Win] [ESP8266 Flasher](https://github.com/nodemcu/nodemcu-flasher/blob/master/Win32/Release/ESP8266Flasher.exe)
 * [Linux/OSX] [esptool](https://github.com/themadinventor/esptool)
 * [OSX] USB-Serial driver [CP2102 driver](https://www.silabs.com/Support%20Documents/Software/Mac_OSX_VCP_Driver.zip)
 * [Windows] USB-Serial driver [CP2102 driver](https://www.silabs.com/Support%20Documents/Software/CP210x_VCP_Windows.zip)

## Linux

  1. Download NodeMCU binary, from [here](https://github.com/xil-se/nodemcu_iot_on_the_cheap/raw/master/nodemcu_1.4.bin)

  2. Flash NodeMCU binary to NodeMCU [esptool](https://github.com/themadinventor/esptool)
    python esptool.py -p /dev/ttyUSB0 write_flash 0x000000 Downloads/nodemcu_1.4.bin

  3. Start [ESPlorer](http://i1.wp.com/esp8266.ru/images/download.gif?zoom=1.5&w=625)
  4. Download one of the Lua sample scripts from below
  5. Rename sample script to _init.lua_
  6. Open the file you renamed to _init.lua_ in ESPlorer
  7. Click the 'Open' button in ESPlorer, to connect ESPlorer to the NodeMCU board
  8. Push the button marked 'RST' on the NodeMCU board.
  9. Watch whatever you pu into _init.lua_ execute upon boot


## Mac

    esptool
    UART Driver
    esplorer 

## Windows

  1. Download NodeMCU binary, from [here](https://github.com/xil-se/nodemcu_iot_on_the_cheap/raw/master/nodemcu_1.4.bin)
  2. Flash NodeMCU binary to NodeMCU using [ESP8266 Flasher, Usage](https://github.com/nodemcu/nodemcu-flasher)
  3. Start [ESPlorer](http://i1.wp.com/esp8266.ru/images/download.gif?zoom=1.5&w=625)
  4. Download one of the Lua sample scripts from below
  5. Rename sample script to _init.lua_
  6. Open the file you renamed to _init.lua_ in ESPlorer
  7. Click the 'Open' button in ESPlorer, to connect ESPlorer to the NodeMCU board
  8. Push the button marked 'RST' on the NodeMCU board.
  9. Watch whatever you pu into _init.lua_ execute upon boot




## NodeMCU Firmware Binary

[nodemcu_1.4.bin](https://github.com/xil-se/nodemcu_iot_on_the_cheap/raw/master/nodemcu_1.4.bin)

**WARNING: This NodeMCU image is not built with all the modules that NodeMCU supports and are listed online. Please make a new image that contains the modules you need. Visit for [NodeMCU Custom Builds](http://frightanic.com/nodemcu-custom-build/) for a service that will do just that for you.**


## Sample LUA Scripts
Rename either one of these files to init.lua and upload it to the NodeMCU board

 * [Get IP sample](https://raw.githubusercontent.com/xil-se/nodemcu_iot_on_the_cheap/master/get_ip.lua)
 * [Setup WiFi sample](https://raw.githubusercontent.com/xil-se/nodemcu_iot_on_the_cheap/master/setup_wifi.lua)
 * [Web Server sample](https://raw.githubusercontent.com/xil-se/nodemcu_iot_on_the_cheap/master/webserver.lua)


## Other Resources

 * [NodeMCU Custom Builds](http://frightanic.com/nodemcu-custom-build/) - Have a custom NodeMCU version built with all the modules that you need
 * [NodeMCU API](https://github.com/nodemcu/nodemcu-firmware/wiki/nodemcu_api_en) - Have a look at all of the modules and function calls supported by NodeMCU
 * [Buy NodeMCU boards](http://www.aliexpress.com/item/New-Wireless-module-NodeMcu-Lua-WIFI-Internet-of-Things-development-board-based-ESP8266-with-pcb-Antenna/32299982691.html?ws_ab_test=searchweb201556_6,searchweb201644_1_79_78_77_82_80_62_81,searchweb201560_4) - The boards are ~$4 including shipping from China. 
