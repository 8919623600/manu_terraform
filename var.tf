variable "sample" {
    default = "welcome to terraform"
}

output "sample_op" {
    value = var.sample
}

output "sample_output" {
    value = "value is ${var.sample}"
}


resource "aws_vpc" "example" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}
#whenever if any variable is declared inside quotes we have to give dollar symbol 