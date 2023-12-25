resource "aws_instance" "web" {
  ami                       = "ami-0f75a13ad2e340a58"           # This is arguments
  instance_type             = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]

  tags = {
    Name                    = "DevOps with AWS LabInstance"
  }
}
