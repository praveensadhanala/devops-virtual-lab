provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.small"
  key_name      = "VLE-Key"

  iam_instance_profile = "LabInstanceProfile"

  subnet_id = "subnet-0575e31a2cc7b1eb1"

  vpc_security_group_ids = [
    "sg-015b3cc2a4649cad2"
  ]

  tags = {
    Name = "VLE-Server-2"
  }
}
