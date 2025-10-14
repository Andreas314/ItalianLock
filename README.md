
Do you hate yourself?\
Do you hate your life?\
Do you want to hate yourself and your life even more?\
Download ItalianLock!\
ItalianLock puts a lock on your console at the start of each session. It can be only unlocked by translating 5 italian words. If you get it wrong 5 times in a row, it will exit automatically, because you are no good anyway!\
To make it work, clone the repository and put following to your .bashrc file:
~~~
if [[ $- == *i* ]]; then
    # Run your program
    path\_to\_lock=path/to/the/lock/files
    cd $path_\to\_lock
    $path\_to\_lock/ItalianLock.sh
    prog\_exit=$?
    prog\_pid=$!
    cd - &> /dev/null

    # When Ctrl+C is pressed, kill program and close terminal
    trap "kill $prog_pid 2>/dev/null; exit" SIGINT

    # Wait for program to finish normally
    wait $prog_pid

    # If it ended normally (not Ctrl+C), clear trap so terminal stays open
    trap - SIGINT
    #close the shell if the programme exits with other code than 0
    if [[ $prog_exit -ne 0 ]]
    then
	    exit
    fi
fi
~~~
HAVE FUN!
