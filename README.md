
Do you hate yourself?\
Do you hate your life?\
Do you want to hate yourself and your life even more?\
Download ItalianLock!\
ItalianLock puts a lock on your console at the start of each session. It can be only unlocked by translating 5 italian words. If you get it wrong 5 times in a row, it will exit automatically, because you are no good anyway!\
To make it work, clone the repository and put following to your .bashrc file:
~~~
if [[ $ITALIAN_OFF -ne 1 ]]
then
    location=location/of/the/files
	exec $location/ConsoleWrapper.sh
fi
~~~
HAVE FUN!
