source ./common.sh

rootValidate

dnf list installed mysql-sever

check_exit_Status $? "mysql-server"