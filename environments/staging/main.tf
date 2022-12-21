terraform {
  cloud {
    organization = "cloudrickshaw"
    hostname     = "app.terraform.io"

    workspaces {
      #tags = ["region:us-east-1", "env:staging"]
      name = "myapp-staging"
    }
  }
}

# changes made on staging 
module "api" {
  source = "../../modules/api"
}

output "api_random_hash" {
  value = module.api.api_string
}
