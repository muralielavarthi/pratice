function ROOT_CHECK()
{
    if [ $UID -ne 0 ]
    then
        echo "you need root access to proceed"
        exit 1
    fi
}

function VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "$2...Failure"
    else
        echo "$2....Sucess"
    fi
}