terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

#related to github actions secrets
provider "digitalocean" {
  token = var.digitalocean_token
}

#previously related to environment variables
variable "do_token" {}
#variable "pvt_key" {}

#previously related to environment variables
provider "digitalocean" {
  token = var.do_token
}

# data "digitalocean_ssh_key" "terraform" {
#   name = "terraform"
# }
