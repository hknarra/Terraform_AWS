# Creating multiple ec2 instances using count "meta argumemt" with single Resource
resource "aws_instance" "my-ec2" {
  ami           = "ami-090fa75af13c156b4" # Amazon Linux
  instance_type = "t2.micro"
  count         = 3
  tags = {
    "Name" = "Dev-${count.index}"
  }
}