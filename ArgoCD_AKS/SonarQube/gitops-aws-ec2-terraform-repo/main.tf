# terraform {
#   required_version = ">= 0.12"
# }

provider "aws" { 
  region = var.aws_region
}

data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["vpc"]
  }
}

data "aws_subnet" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.main.id]
  }
  filter {
    name   = "tag:Name"
    values = ["subnet-public1-ap-south-1a"]
  }
}

# resource "aws_security_group" "sonarqube_sg" {
#   name   = "sonarqube-sg"
#   vpc_id = data.aws_vpc.main.id
# }

# Security group for SonarQube
resource "aws_security_group" "sonarqube_sg" {
  name        = "sonarqube_security_group"
  description = "Allow SonarQube and SSH Traffic"
  vpc_id      = data.aws_vpc.main.id

  ingress {
    description = "Allow SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SonarQube access"
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "SonarQube Security Group"
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

}

resource "aws_instance" "sonarqube" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.large"
  key_name      = var.key_name
  associate_public_ip_address = true

  subnet_id = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sonarqube_sg.id]

  user_data = file("install_sonarqube.sh")

  tags = {
    Name = "SonarQube Instance"
  }
}
