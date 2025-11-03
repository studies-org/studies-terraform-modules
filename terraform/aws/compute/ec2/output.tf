#-------------------------
# Outputs for EC2 Instance
#-------------------------

output "vm_public_ip" {
    description = "The public IP address of the EC2 instance."
    value       = aws_instance.ec2.public_ip  
}

output "vm_private_ip" {
    description = "The private IP address of the EC2 instance."
    value       = aws_instance.ec2.private_ip  
}

output "vm_id" {
    description = "The ID of the EC2 instance."
    value       = aws_instance.ec2.id  
}

output "vm_arn" {
    description = "The ARN of the EC2 instance."
    value       = aws_instance.ec2.arn  
}

output "vm_public_dns" {
    description = "The public DNS name of the EC2 instance."
    value       = aws_instance.ec2.public_dns  
}