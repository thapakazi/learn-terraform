locals {
  vpc = {
    cidr = "10.0.0.1/16"
  }
}

locals {
  subnets = cidrsubnets(local.vpc.cidr, 4, 4, 4, 4)
  private_subnets = slice(local.subnets, 0, 2)
  public_subnets  = slice(local.subnets, 2, 4)
}


output "public_subnets" {
  value = local.public_subnets
}

output "private_subnets" {
  value = local.private_subnets
}

