#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
echo "<h1>Hello! AWS Infra created using Terraform</h1>" | sudo tee /var/www/html/index.html