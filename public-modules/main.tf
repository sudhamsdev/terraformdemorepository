module "aws_vpc" {
  source  = "terraform-aws-modules/vpc/aws" #registry.terraform.io
  version = "5.15.0"

  #variables
  cidr            = "192.168.0.0/16"
  public_subnets  = ["192.168.0.0/24", "192.168.2.0/24"]
  private_subnets = ["192.168.1.0/24", "192.168.3.0/24"]
  azs             = ["us-east-2a", "us-east-2b"]

}