variable "region" {
  description = "Provide region name for VPC resources creation"
  type        = string
  default     = "us-east-1"
}

#variable "azs" {
#    description = "Provider availability zone details for subnets creation"
#    type = list(string)
#    default = [ "us-east-2a", "us-east-2b", "us-east-2c" ]
#}

variable "vpc_cidr" {
  description = "(Important) Provider CIDR value for VPC network"
  type        = string
  default     = "10.240.0.0/16"
}

variable "vpc_tags" {
  description = "Provide tags for VPC resource(unique)"
  type        = map(string)
  default = {
    "Name" = "ProductionNetwork"
  }
}

#variable "public_subnets" {
#    description = "Provide public subnet CIDR with 3 byte as even numbers"
#    type = map(string)
#    default = {
#      "${var.region}a" = "10.240.0.0/24"
#      "${var.region}b" = "10.240.2.0/24"
#      "${var.region}c" = "10.240.4.0/24"
#    }
#}

locals {
  public_subnets = {
    "${var.region}a" = "10.240.0.0/24"
    "${var.region}b" = "10.240.2.0/24"
    "${var.region}c" = "10.240.4.0/24"
  }
  private_subnets = {
    "${var.region}a" = "10.240.1.0/24"
    "${var.region}b" = "10.240.3.0/24"
    "${var.region}c" = "10.240.5.0/24"
  }
}

#variable "private_subnets" {
#    description = "Provide private subnet CIDR with 3 byte as odd numbers"
#    type = map(string)
#    default = {
#      "${var.region}a" = "10.240.1.0/24"
#      "${var.region}b" = "10.240.3.0/24"
#      "${var.region}c" = "10.240.5.0/24"
#    }
#}

locals {
  common_tags = {
    "Environment" = "Production"
    "Type"        = "3-tier application network"
  }
}