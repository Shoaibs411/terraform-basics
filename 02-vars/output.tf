#Declaring an empty variable
variable "sample" {}        

#Declaring a variable with default value

variable "batch" {
    default = "batch56"
}

# Printing a variable

output "batch-op" {
    value = var.batch
}