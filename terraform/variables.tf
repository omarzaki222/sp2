# Adding the region as a variable, used in provider.tf
variable "region" {
  type    = string 
  default = "es-east-1"
}

# Adding the ami as a variable, used in main.tf 
variable "ami" {
  type    = string 
  default = "ami-04b70fa74e45c3917"
}

# Create terraform.tfvars and add your public ssh key in 
variable "public_key" {
  description = "ssh public key"
}