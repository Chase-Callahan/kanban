output "ssh_command" {
  description = "Command to connect to EC2 instance"
  value       = <<-EOF
  ssh -i ${var.private_key_path} ec2-user@${aws_instance.my_swarm.public_ip}
  EOF
}
