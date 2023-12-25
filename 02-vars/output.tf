#Declaring an empty variable
# variable "sample" {}        

#Declaring a variable with default value

variable "batch" {
    default = "batch-56"
}

# Printing a variable

output "batch-op" {
    value = var.batch
}

# when to enclose a variable in quotes and when to use $ notation for a variable ?
# whenever a variable is enclosed in a set of strings or in between a sentence, Then we need to enclose them in strings and with bash notations.

output "batch_number"{
    value = "The current batch number is ${var.batch}"
}

# demo on numerical data type

variable numerical{
    default = 100
}

output "numerical_op"{
    value = var.numerical
}

# Declaring a list variables : A key with multiple values is referred as a list.

variable "list"{
    default = [
        "DevOps",
        "AWS_Cloud",
        56,
        true,
        "Shoaib Shaikh"

    ]
}

# priting a list variable

output "list_op"{
    value ="Welcome to ${var.list[0]} with ${var.list[1]} Training & this is my batch ${var.list[2]} student is ${var.list[4]}"
}

# Declarin a map variable

variable "training_map" {
    default = {
        batch       = "B-56"
        mode        = "Online & real time training"
        training    = "DevOps with AWS"
    }
}

# Printing a map variable

output "training_map_op"{
    value = "${var.training_map["training"]} batch ${var.training_map["batch"]} is completely ${var.training_map["mode"]}"
}


# Decalring variable in very matured way. 
# terraform.tfvars is a default file. 

variable "city"{}

output "city_name" {

value = var.city  
}

variable "state"{}

output "state_name" {

value = var.state 
}

variable "country"{}

output "country_name" {

value = var.country 
}