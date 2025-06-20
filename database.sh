EXPENSE_PASSWORD=$(cat /home/ec2-user/pratice/expense_pass.txt)

source ./common.sh

ROOT_CHECK

dnf list installed mysql-server

if [ $? -ne 0 ]
then 
    echo "mysql-server installing now"
    dnf install mysql-server -y 
    VALIDATE $? "mysql-server installation"
else
    echo "mysql-server already installed"
fi

systemctl start mysqld

VALIDATE $? "mysql-sever started"

systemctl enable mysqld

VALIDATE $? "mysql-sever enabled"

mysql -h localhost -u root -pExpenseApp@1 -e 'SHOW DATABASES;'

if [ $? -ne 0 ]
then
    echo "setting database root password"
    mysql_secure_installation --set-root-pass $EXPENSE_PASSWORD
    VALIDATE $? "root-password-setting"
else
    echo "root password already set"
fi
systemctl restart mysqld

VALIDATE $? "mysql-sever restarted"