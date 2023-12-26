resource "aws_instance" "app" {
  ami                       = "ami-0f75a13ad2e340a58"           # This is arguments
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]                          # Start using the variable

  tags = {
    Name                    = "EC-2 from Modules"
  }
}



# Step 3: Declare the input that we have to consume as a variable
variable "sg" {}


output "public_ip"{
    value = aws_instance.app.public_ip
}

