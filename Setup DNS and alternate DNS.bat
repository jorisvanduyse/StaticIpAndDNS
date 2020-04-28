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