variable  "ingress_rule" {
    default = [
    ingress {
      description     = "ssh"
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
    ingress {
      description     = "web"
      from_port       = 80
      to_port         = 80
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
    ingress {
      description     = "jenkins"
      from_port       = 8080
      to_port         = 8080
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
    ingress {
      description     = "nexus"
      from_port       = 8081
      to_port         = 8081
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  }
    ]
} 