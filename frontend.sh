
script_location=$(pwd)

yum install ngnix -y
systemctl enable ngnix
systemctl start ngnix
rm -rf /usr/share/ngnix/html/*

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 
cd /usr/share/nginx/html 
unzip /tmp/frontend.zip
<<<<<<< HEAD
cp ${script-location}/sanju/nginx-roboshop.conf /etc/nginx/default.d/roboshop.conf
=======

cp ${script_location}/files/nginx-roboshop.conf /etc/nginx/default.d/roboshop.conf

>>>>>>> 0fc470e2b6ddccf89a81c619ddcc790a0f90491e
systemctl restart nginx
