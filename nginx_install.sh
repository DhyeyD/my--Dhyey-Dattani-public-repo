#!/bin/bash

apt-get update
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Nginx</title>
</head>
<body>
    <h1>Welcome to Data Managment External Exam.. EC2!</h1>
    <p>Myself Dhyey Dattani from Sem-9. Pursuing M.Sc IT in Cyber Security..</p>
</body>
</html>