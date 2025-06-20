source ./common.sh

root_validate

dnf list installed mysql-server

check_exit_status $? "mysql-server installation"

dnf install mysql-server -y 

check_exit_status $? "mysql-server installation"

systemctl start mysqld

check_exit_status $? "mysql-sever started"

systemctl enable mysqld

check_exit_status $? "mysql-sever enabled"

mysql -h localhost -u root -p$EXPENSE_PASSWORD

check_exit_status $? "database-root-password-set"

mysql_secure_installation --set-root-pass $EXPENSE_PASSWORD

check_exit_status $? "database-root-password-set"