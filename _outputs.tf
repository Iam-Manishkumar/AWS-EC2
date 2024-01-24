output "instance-id" {
  description = "The EC2 instance ID"
  value       = aws_instance.ec2dev.id
}

/*output "instance-public-dns" {
  description = "The EC2 instance public DNS"
  value       = aws_instance.instance.public_dns
}
*/