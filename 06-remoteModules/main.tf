# Calling the backend modules

# Calls ec2 module
module "ec2" {
    source          = "./ec2"
    sg              = module.sg.sg_id       # Step 2: Passing the that the modules needs this variable over the root module
  
}

# Calls sg module
module "sg" {
    source          = "./sg"
  
}

output "public_ip" {
    value = module.ec2.public_ip
  
}