variable "sample" {
    default = "welcome to terraform"
}

output "sample_op" {
    value = "var.sample"
}

output "sample_output" {
    value = "value is ${var.sample}"
}

#testing 