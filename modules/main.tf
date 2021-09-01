provider "aws" {
    region = "us-east-1"
}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "3.7.0"

    name = "main"
    cidr = "10.0.0.0/18"

    azs = ["us-east-1a", "us-east-1b"]
    private_subnets = ["10.0.1.0/24"]
    public_subnets = ["10.0.0.0/24"]

    enable_nat_gateway = true

    tags = {
        Environment = "staging"
    }
}