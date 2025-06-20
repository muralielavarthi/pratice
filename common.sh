PASSWORD = ExpenseApp@1

function root_validate()
{
    if [ $UID -ne 0 ]
    then
        echo "you need root access to proceed"
        exit 1
    fi
}

function check_exit_status()
{
    if [ $1 -ne 0 ]
    then
        echo "$2...Failure"
        exit 1
    else
        echo "$2....Sucess"
    fi
}