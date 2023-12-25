resource "aws_instance" "web" {
  ami           = "ami-0f75a13ad2e340a58"           # This is arguments
  instance_type = "t2.micro"

  tags = {
    Name = "DevOps with AWS LabInstance"
  }
}

output "instance_dns" {
    value = aws_instance.web.private_ip             # This is attributes. 
  
}

output "instance_arn" {
    value = aws_instance.web.arn                    # This is attributes. 
  
}