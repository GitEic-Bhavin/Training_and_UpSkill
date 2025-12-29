resource "aws_security_group" "bastion_sg" {
  name        = "bastion-sg"
  vpc_id      = var.vpc_id
  description = "Allow SSH from admin IP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.admin_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bastion" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.public_subnet

  key_name = var.key_pair_name

  vpc_security_group_ids = [
    aws_security_group.bastion_sg.id
  ]

  associate_public_ip_address = true

  tags = {
    Name = "bastion-host"
  }
}
