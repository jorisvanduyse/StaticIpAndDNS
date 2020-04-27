SET /p a=2
SET /p b=3
SET /p name1=Aston
SET /p name2=Martin
PAUSE
SET a
PAUSE
IF %a%==2 echo The value of a is 2
IF %name2%==Martin echo Hi this is Martin

:: Using if else statements
IF %a%==%b% (echo Numbers are equal) ELSE (echo Numbers are different)
IF %name1%==%name2% (echo Name is Same) ELSE (echo Name is different)
PAUSE