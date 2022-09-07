# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-090fa75af13c156b4"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "from ec2" 
  }
}