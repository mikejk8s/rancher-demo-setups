provider "digitalocean" {
  version = "~> 1.15"
  token   = var.digitalocean_token
}

# Rancher2 bootstrapping provider
provider "rancher2" {
  version   = "1.9.0"
  api_url   = "https://${digitalocean_record.rancher.fqdn}"
  insecure  = true
  bootstrap = true
}
