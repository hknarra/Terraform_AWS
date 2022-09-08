# AWS EC2 Instance Module
module "ec2_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "Ec2-insatnce using modules"
  instance_count = 2

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0530cf93d3e384288"]
  subnet_id              = "subnet-0ca0a441e0cba6d68"
  user_data              = file("apache-install.sh")

  tags = {
    Name        = "Modules-ec2"
    Terraform   = "true"
    Environment = "dev"
  }
}