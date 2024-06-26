resource "aws_security_group" "sample_sg" {
  name        = "my_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  dynamic ingress {
    for_each = var.ingress_rule
    content {
    description     = ingress.value["description"]
    from_port       = ingress.value["from_port"]
    to_port         = ingress.value["to_port"]
    protocol        = ingress.value["protocol"]
    cidr_blocks     = ingress.value["cidr_blocks"]
    }
  }
   dynamic egress {
    for_each = var.egress_rule
    content {
      description     = egress.value["description"]
      from_port       = egress.value["from_port"]
      to_port         = egress.value["to_port"]
      protocol        = egress.value["protocol"]
      cidr_blocks     = egress.value["cidr_blocks"]
    }
   }


  tags = {
    Name = "sg"
  }
}

resource "aws_security_group" "second_sample_sg" {
  name        = "my_sg_2"
  description = "Allow TLS inbound traffic and all outbound traffic"


  
  dynamic ingress {
    for_each = var.ingress_rule_sample
    content {
    description     = ingress.value["description"]
    from_port       = ingress.value["from_port"]
    to_port         = ingress.value["to_port"]
    protocol        = ingress.value["protocol"]
    cidr_blocks     = ingress.value["cidr_blocks"]
    }
  }
   dynamic egress {
    for_each = var.egress_rule
    content {
      description     = egress.value["description"]
      from_port       = egress.value["from_port"]
      to_port         = egress.value["to_port"]
      protocol        = egress.value["protocol"]
      cidr_blocks     = egress.value["cidr_blocks"]
    }
   }


  tags = {
    Name = "sg"
  }
}