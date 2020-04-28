@ECHO OFF
REM  --> Setup IP4 and Gatway and Mask
ECHO --------Lets set up the Internet Protocol Version(TCP/IPv4) Properties--------
ECHO The following settings will have to be configured: "device IP4", "Subnet mask", "Default gateway", "internet device name", 
set /P IP4="What the device IP4? "
echo "IP4 configured as: '%IP4%' !

set /P Subnetmask="What is the Subnet mask? "
echo Subnet mask configured as: '%Subnetmask%' !

set /P Defaultgateway="What is the Default gateway? "
echo Default gateway configured as: '%Defaultgateway%' !

set /P namedevice="What is the name of your "internet device" (ethernet or wi-fi)? "
echo name device configured as: '%namedevice%' !
PAUSE