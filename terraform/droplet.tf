provider "digitalocean" {
  token = var.digitalocean_token
}

# Create Droplet
resource "digitalocean_droplet" "droplet-github-actions" {
  image  = "ubuntu-22-04-x64"  # Image slug for the desired OS
  name   = "droplet-cicd-github-actions"
  region = "syd1"              # Desired region
  size   = "s-1vcpu-2gb"       # Droplet size
  ssh_keys = [ 38147259, 37150778 ]
}

resource "digitalocean_record" "dropletcicd" {
  domain = "dnsif.ca"
  type   = "A"
  name   = "nextcloud"
  ttl = 600
  value  = digitalocean_droplet.nextcloud-vm.ipv4_address
}