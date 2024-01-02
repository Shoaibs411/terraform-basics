resource "aws_instance" "web" {
  count                     = 0
  ami                       = data.aws_ami.ami.id           # This is arguments
  instance_type             = "t2.micro"

  tags = {
    Name                    = "AWS DevOps EC-2 LabInstance"
  }
}
