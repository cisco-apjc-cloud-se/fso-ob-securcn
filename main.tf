terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mel-ciscolabs-com"
    workspaces {
      name = "fso-ob-securecn"
    }
  }
  required_providers {
    intersight = {
      source = "Portshift/securecn"
      # version = "1.1.8"
    }
  }
}

provider "securecn" {
  # Configuration options
  access_key = var.securecn_access_key
  secret_key = var.securecn_secret_key
  server_url = var.securecn_server_url
}
