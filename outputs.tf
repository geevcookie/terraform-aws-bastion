output "public_ip" {
  value       = aws_instance.default.public_ip
  description = "Public IP of the bastion"
}

output "instance_id" {
  value       = aws_instance.default.id
  description = "Instance ID"
}