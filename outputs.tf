output "instance-id" {
  description = "The EC2 instance ID"
  value       = aws_instance.ec2dev.id
}

output "keyName" {
  description = "Key"
  value       = aws_instance.ec2dev.key_name
}