
output "instance_dns" {
    value                   = aws_instance.web.private_ip             # This is attributes. 
}

output "instance_arn" {
    value                   = aws_instance.web.arn                    # This is attributes. 
}