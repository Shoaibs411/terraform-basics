resource "aws_instance" "app" {
  ami                       = "ami-0f75a13ad2e340a58"           # This is arguments
  instance_type             = "t2.micro"
}

output "public_ip"{
    value = aws_instance.app.public_ip
}