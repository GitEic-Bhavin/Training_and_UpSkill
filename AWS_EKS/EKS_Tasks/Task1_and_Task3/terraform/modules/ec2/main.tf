# Private EC2

resource "aws_security_group" "private_ec2_sg" {
  name   = "private-ec2-sg"
  vpc_id = var.vpc_id

dynamic "ingress" {
    for_each = var.bastion_sg_id == null ? [] : [1]
    content {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        security_groups = [var.bastion_sg_id]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "private_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet
  key_name               = var.key_pair_name
  associate_public_ip_address = var.is_public

  vpc_security_group_ids = [
    aws_security_group.private_ec2_sg.id
  ]

  tags = {
    Name = "private-ec2"
  }
}
