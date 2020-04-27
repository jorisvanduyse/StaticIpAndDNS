@ECHO OFF
REM  --> Setup DNS and alternate DNS
ECHO "--------What is your prefered DNS? We advise to use 1.1.1.1--------"
set /P DNSANSWER="Would you like to use advised settings?"
if [%DNSANSWER%==Yes]
then
	set /P DNS="1.1.1.1"
	set /P DNSalter="1.0.0.1"
	ECHO Yes
	PAUSE

elif [%DNSANSWER%==No] 
then
	set /P DNS="Type your custom DNS server"
	echo custom DNS server configured as: %DNS%!
	set /P DNSalter="Type your alternative custom DNS server"
	echo alternative custom DNS server configured as: %DNSalter%!
	ECHO NO
	PAUSE
else
	ECHO Faulty command
fi
rem  || ['%DNSANSWER%'==Y] || ['%DNSANSWER%'==y] || ['%DNSANSWER%'==yes]
rem || ['%DNSANSWER%'==N] || ['%DNSANSWER%'==n] || ['%DNSANSWER%==no] 