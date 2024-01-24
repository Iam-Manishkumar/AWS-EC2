provider "aws" {
  region     = "us-east-2"
  access_key = "abc"
  secret_key = "abc"
}


resource "aws_instance" "ec2dev" {
    ami = var.instance-ami
    instance_type = var.instance-type
    associate_public_ip_address = "${var.instance-associate-public-ip}"
    vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
    subnet_id                   = "${aws_subnet.subnet.id}"

    tags = {
    Name = "${var.instance-tag-name}"
  }  
}

resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc-cidr-block}"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.vpc-tag-name}"
  }
}

resource "aws_internet_gateway" "ig" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name = "${var.ig-tag-name}"
  }
}

