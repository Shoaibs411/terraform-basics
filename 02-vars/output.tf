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
    value = "The current batch number is var.batch"
}