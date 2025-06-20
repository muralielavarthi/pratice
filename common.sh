function rootValidate()
{
    if [ $UID -nq 0 ]
    then
        echo "you need root access to proceed"
        exit 1
    fi
}

function check_exit_Status()
{
    if [ $1 -nq 0 ]
    then
        echo "$2 not installed...Failure"
    else
        echo "$2 installed....Sucess"
}
