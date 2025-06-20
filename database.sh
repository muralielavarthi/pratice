EXPENSE_PASSWORD=$(cat /home/ec2-user/pratice/expense_pass.txt)

source ./common.sh


ROOT_CHECK

dnf list installed mysql-server

VALIDATE $? "mysql-server installation"

if [ $? -ne 0 ]
then 
    echo "installing mysql-server"
    dnf install mysql-server -y 
    VALIDATE $? "mysql-server installation"
fi

systemctl start mysqld

VALIDATE $? "mysql-sever started"

systemctl enable mysqld

VALIDATE $? "mysql-sever enabled"

mysql -h localhost -u root -p$EXPENSE_PASSWORD

VALIDATE $? "database root password"

if [ $? -ne 0 ]
then
    echo "setting database root password"
    mysql_secure_installation --set-root-pass $EXPENSE_PASSWORD
    VALIDATE $? "database-root-password-set"
fi
systemctl restart mysqld

VALIDATE $? "mysql-sever restarted"