@ECHO OFF
REM --> BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
REM  --> Running /ipconfig
ECHO "--------Lets set run ipconfig /all--------"
PAUSE
COLOR 67 
ipconfig /all

REM  --> Setup IP4 and Gatway and Mask
ECHO --------Lets set up the Internet Protocol Version(TCP/IPv4) Properties--------
ECHO The following settings will have to be configured: "device IP4", "Subnet mask", "Default gateway", "internet device name", 
set /P IP4="What the device IP4? "
echo "IP4 configured as:" %IP4%!

set /P Subnetmask="What is the Subnet mask?"
echo "Subnet mask configured as:" %Subnetmask%!

set /P Defaultgateway="What is the Default gateway?"
echo "Default gateway configured as:" %Defaultgateway%!

set /P namedevice="What is the name of your "internet device" (ethernet or wi-fi)?"
echo "name device configured as:" %namedevice%!

echo %IP4% %Subnetmask% %Defaultgateway% %namedevice%
REM  --> Setup DNS and alternate DNS
ECHO "--------What is your prefered DNS? We advise to use 1.1.1.1--------"
ECHO "Would you like to use advised settings? Type yes or Y"
set /P DNSANSWER="Would you like to use advised settings? Type yes or Y if not type not or N"
if '%DNSANSWER%' =Yes|| '%DNSANSWER%'=Y||'%DNSANSWER%'=y||'%DNSANSWER%'=yes
	set /P DNS="1.1.1.1"
	set /P DNSalter="1.0.0.1" 
if '%DNSANSWER%' = No || '%DNSANSWER%' = N || '%DNSANSWER%' = n || '%DNSANSWER%' = no 
	set /P DNS="Type your custom DNS server"
	echo custom DNS server configured as: %DNS%!
	set /P DNSalter="Type your alternative custom DNS server"
	echo alternative custom DNS server configured as: %DNSalter%!

REM  --> Execute commands
ECHO "--------All configurations have been set-----------"
set /P RUNANSWER="--------Type run to execute command-----------"
if '%RUNANSWER%' = run || '%RUNANSWER%' = run
	ECHO "netsh interface ip set address name="%namedevice%" static %IP4% %Subnetmask% %Defaultgateway%"
::	netsh interface ip set address name="%namedevice%" static %IP4% %Subnetmask% %Defaultgateway%
	ECHO "netsh interface ip set dns name="%namedevice%" static %DNS%"
::	netsh interface ip set dns name="%namedevice%" static %DNS%
	ECHO "netsh interface ip add dns name="%namedevice%" %DNSalter% index=2"
::	netsh interface ip add dns name="%namedevice%" %DNSalter% index=2
	COLOR 2F
	ECHO "SETUP COMPLEET you can close this window now"
ELSE (
	ECHO "Faulty command try again"
	
	)
