variable "sample" {
    default = "welcome to terraform"
}

output "sample_op" {
    value = var.sample
}

output "sample_output" {
    value = "value is ${var.sample}"
}



#whenever if any variable is declared inside quotes we have to give dollar symbol 