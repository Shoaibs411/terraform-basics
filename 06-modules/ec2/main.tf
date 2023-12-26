resource "aws_instance" "app" {
  ami                       = "ami-0f75a13ad2e340a58"           # This is arguments
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  tags = {
    Name                    = "EC-2 from Modules"
  }
}



# Declare the input that we have to consume as a variable
variable "sg" {}


# Info which needs to be shared to other module has to be decalred as an output. 
output "public_ip"{
    value = aws_instance.app.public_ip
}

