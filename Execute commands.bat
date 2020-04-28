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