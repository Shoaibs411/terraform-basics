resource "aws_instance" "web" {
  count                     = 0                             # provide the number to create those many instances
  ami                       = data.aws_ami.ami.id           # This is arguments
  instance_type             = "t2.micro"

  tags = {
    "Name"                    = element(["catalogue", "cart", "user"], count.index)
  }
}
