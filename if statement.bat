@ECHO OFF
ECHO "--------Lets set run ipconfig /all--------"
set /p input=Insert your input:
ECHO %input%
IF %input%==hi ECHO if '%RUNANSWER%' = run || '%RUNANSWER%' = run
	ECHO "netsh interface ip set address name="%namedevice%" static %IP4% %Subnetmask% %Defaultgateway%"
	netsh interface ip set address name="%namedevice%" static %IP4% %Subnetmask% %Defaultgateway%
	ECHO "netsh interface ip set dns name="%namedevice%" static %DNS%"
	netsh interface ip set dns name="%namedevice%" static %DNS%
	ECHO "netsh interface ip add dns name="%namedevice%" %DNSalter% index=2"
	netsh interface ip add dns name="%namedevice%" %DNSalter% index=2
	COLOR 2F
	ECHO "SETUP COMPLEET you can close this window now"
PAUSE
PAUSE
SET /A b=3
ECHO %b%
SET /a name1=Aston
ECHO %name1%
SET /a name2=Martin
ECHO %name2%

:: Using if statement
IF %a%==2 echo The value of a is 2
IF %name2%==Martin echo Hi this is Martin

:: Using if else statements
IF %a%==%b% (
	echo Numbers are equal
	) ELSE (
	echo Numbers are different)
IF %name1%==%name2% (
	echo Name is Same
	) ELSE (
	echo Name is different)
PAUSE