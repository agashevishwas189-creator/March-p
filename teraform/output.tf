output "public_ip" {
    value = aws_instance.dummy.public_ip
  
}

output "private_ip" {
    value = aws_instance.dummy.private_ip
  
}   
output "instance_id" {
    value = aws_instance.dummy.id
  
}
output "vpc_security_group_ids" {
    value = aws_instance.dummy.vpc_security_group_ids
  
}