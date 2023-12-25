resource "aws_instance" "web" {
  ami                       = "ami-0f75a13ad2e340a58"           # This is arguments
  instance_type             = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]

  tags = {
    Name                    = "DevOps with AWS LabInstance"
  }
}

output "instance_dns" {
    value                   = aws_instance.web.private_ip             # This is attributes. 
  
}

output "instance_arn" {
    value                   = aws_instance.web.arn                    # This is attributes. 
  
}

resource "aws_security_group" "allow_tls" {
    name                    = "B56_allow_tls"
    description             = "B56 Allow TLS inbound traffic"

  ingress {
    description             = "SSH from VPC"
    from_port               = 22
    to_port                 = 22
    protocol                = "tcp"
    cidr_blocks             = ["0.0.0.0/0"]
  }

  egress {
    from_port               = 0
    to_port                 = 0
    protocol                = "-1"
    cidr_blocks             = ["0.0.0.0/0"]
  }

  tags = {
    Name                    = "allow_tls"
  }
}