resource "aws_instance" "app" {
  ami                       = data.aws_ami.ami.id           # This is arguments
  instance_type             = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]

  tags = {
    Name                    = "DevOps with AWS LabInstance"
  }
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["355449129696"]
}
