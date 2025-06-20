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


mysql -h 172.31.95.138 -u root -pExpenseApp@1 -e 'show databases;' 

if [ $? -ne 0 ]
then
    mysql_secure_installation --set-root-pass ExpenseApp@1
    VALIDATE $? "Root Password setup"
else
    echo "MySQL Root password already setup ...SKIPPING"
fi
systemctl restart mysqld

VALIDATE $? "mysql-sever restarted"