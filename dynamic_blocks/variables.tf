variable  "ingress_rule" {
    default = [
    {
      description     = "ssh"
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
    {
      description     = "web"
      from_port       = 80
      to_port         = 80
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
     {
      description     = "jenkins"
      from_port       = 8080
      to_port         = 8080
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
     {
      description     = "nexus"
      from_port       = 8081
      to_port         = 8081
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  }
    ]
} 

variable  "ingress_rule_sample" {
    default = [
    {
      description     = "ssh"
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
    {
      description     = "nginx"
      from_port       = 80
      to_port         = 80
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
     {
      description     = "tomcat"
      from_port       = 8080
      to_port         = 8080
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  },
     {
      description     = "sonarqube"
      from_port       = 8081
      to_port         = 8081
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
  }
    ]
} 


variable egress_rule {
    default = [ {
      description     = "egress all"
      from_port       = 0
      to_port         = 0
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
    },
    ]
}