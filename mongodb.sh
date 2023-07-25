location=$(pwd)
cp ${location}/sanju/mongodb.repo /etc/yum.repos.d/mongodb.repo    

yum install mongodb-org -y

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

systemctl enable mongod 
systemctl start mongod 
