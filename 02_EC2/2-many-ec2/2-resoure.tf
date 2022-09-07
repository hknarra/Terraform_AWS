# Create many EC2 Instances with Meta argument count in terraform
resource "aws_instance" "my-ec2" {
  ami           = "ami-090fa75af13c156b4" # Amazon Linux
  instance_type = "t2.micro"
  count         = 3
  tags = {
    "Name" = "Dev-${count.index}"
  }
}