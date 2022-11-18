resource "aws_instance" "mon_instance" {
  instance_type          = var.instance_type
  ami                    = var.ec2_ami
  key_name               = "alex_key"
  subnet_id              = aws_subnet.mon_subnet.id
  vpc_security_group_ids = [aws_security_group.mon_sg.id]
  tags = {
    "Name" = var.ec2_instance_name

  }
}

# Network

resource "aws_vpc" "mon_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc_sncf"
  }
}

# Subnet

resource "aws_subnet" "mon_subnet" {
  vpc_id                  = aws_vpc.mon_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "subnet_sncf_alex"
  }
}

# SG

resource "aws_security_group" "mon_sg" {
  name        = "alex_sncf_sg"
  description = "Groupe de securite"
  vpc_id      = aws_vpc.mon_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sncf_sg_alex"
  }
}