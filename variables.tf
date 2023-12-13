#  ---------------------------- aws  variables ----------------------------
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "cidr_subnet1" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}


variable "availability_zone" {
  description = "availability zone to create subnet"
  default     = "us-west-1"
}
variable "environment_tag" {
  description = "Environment tag"
  default     = "Production"

}


variable "os_names" {
  type    = list(string)
  default = ["Ansible_controller_node", "K8S_primary", "K8S_secondary1", "K8S_secondary2"]

}

variable "az" {
  type    = list(string)
  default = ["us-west-1a", "us-west-1b", "us-west-1c"]

}
variable "subnet_names" {
  type    = list(string)
  default = ["subnet-1", "subnet-2", "subnet-3"]

}


variable "instance_types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro",
    ap-south-1 = "t2.micro",
    us-west-1  = "t2.micro"
  }
}

variable "master_node" {
  type = map(any)
  default = {
    aws_prod = "t2.micro"
  }
}
