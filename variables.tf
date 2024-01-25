variable "aws-region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

/*variable "aws-profile" {
  description = "The name of the AWS shared credentials account."
  type        = AWS-Test
}*/


variable "instance-ami" {
  description = "The AMI (Amazon Machine Image) that identifies the instance"
  type        = string
  default     = "ami-035d8ae8de3734e5a"
}

variable "instance-type" {
  description = "The instance type to be used"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
  default     = "vpc-042454a3394eb75d0"
}

variable "subnet_id" {
  description = "ID of the existing subnet"
  type        = string
  default     = "subnet-0a16ed061532c0a75"
}

variable "instance-key-name" {
  description = "The name of the key to associate to the instance."
  type        = string
  default     = "Dev-Key"
}

/*variable "iam-role-name" {
  description = "The IAM role to assign to the instance"
  type        = string
  default     = ""
}*/

variable "instance-associate-public-ip" {
  description = "Defines if the EC2 instance has a public IP address."
  type        = string
  default     = "true"
}

/*variable "user-data-script" {
  description = "The filepath to the user-data script, that is executed upon spinning up the instance"
  type        = string
  default     = ""
}*/

variable "instance-tag-name" {
  description = "instance-tag-name"
  type        = string
  default     = "EC2-instance"
}

variable "vpc-cidr-block" {
  description = "The CIDR block to associate to the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet-cidr-block" {
  description = "The CIDR block to associate to the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vpc-tag-name" {
  description = "The Name to apply to the VPC"
  type        = string
  default     = "VPCTest"
}

variable "subnet-tag-name" {
  description = "The Name to apply to the VPN"
  type        = string
  default     = "SubnetTest"
}

variable "sg-tag-name" {
  description = "The Name to apply to the security group"
  type        = string
  default     = "SGTest"
}
