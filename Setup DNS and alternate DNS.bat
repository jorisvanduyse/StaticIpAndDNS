@ECHO off
REM  --> Setup DNS and alternate DNS
ECHO "--------What is your prefered DNS? We advise to use 1.1.1.1--------"
ECHO "Would you like to use advised settings? Type yes or no"
set /P DNSANSWER="Answer: "
if %DNSANSWER%==yes (set DNS=1.1.1.1) 
ECHO DNS configured as: %DNS%
set DNSalter=1.0.0.1
ECHO alternative DNS server configured as:  %DNSalter%
if %DNSANSWER%==no ECHO succes
	set /P DNS="Type your custom DNS server"
	echo custom DNS server configured as: %DNS%!
	set /P DNSalter="Type your alternative custom DNS server"
	echo alternative custom DNS server configured as: %DNSalter%!
PAUSE
::if '%DNSANSWER%' =Yes|| '%DNSANSWER%'=Y||'%DNSANSWER%'=y||'%DNSANSWER%'=yes
	::set /A DNS="1.1.1.1"
	::set /A DNSalter="1.0.0.1" 
::if '%DNSANSWER%' = No || '%DNSANSWER%' = N || '%DNSANSWER%' = n || '%DNSANSWER%' = no 
	::set /P DNS="Type your custom DNS server"
	::echo custom DNS server configured as: %DNS%!
	::set /P DNSalter="Type your alternative custom DNS server"
	::echo alternative custom DNS server configured as: %DNSalter%!
PAUSE