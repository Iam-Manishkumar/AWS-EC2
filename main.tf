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

