provider "aws" {
  region     = var.aws-region
  profile    = "AWS-Test"
}

resource "aws_instance" "ec2dev" {
  ami                         = var.instance-ami
  instance_type               = var.instance-type
  key_name                    = var.instance-key-name
  associate_public_ip_address = var.instance-associate-public-ip
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = var.subnet_id

  tags = {
    Name = "${var.instance-tag-name}"
  }
}

resource "aws_key_pair" "instance-key-name" {
  key_name   = var.instance-key-name
  public_key = tls_private_key.rsa.public_key_openssh
}

# RSA key of size 4096 bits
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "TF-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "Dev-Key"
}

resource "aws_security_group" "sg" {
  name   = var.sg-tag-name
  vpc_id = var.vpc_id

  ingress {
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3389"
    to_port     = "3389"
  }

  egress {
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    to_port     = "0"
  }

  tags = {
    Name = "${var.sg-tag-name}"
  }
}
