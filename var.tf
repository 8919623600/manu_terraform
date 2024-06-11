variable "sample" {
    default = "welcome to terraform"
    ami     =  "ami-0174d086840117932"
}

output "sample_op" {
    value = var.sample
}

output "sample_output" {
    value = "value is ${var.sample}"
}



#whenever if any variable is declared inside quotes we have to give dollar symbol 