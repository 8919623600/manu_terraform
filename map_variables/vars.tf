variable "COMPONENTS" {
    default = {
        catalouge = {
            instance_type = "t2.micro"
        },
        cart = {
            instance_type = "t2.medium"
        },
        shopping = {
            instance_type = "t2.micro"
        }
    }
}