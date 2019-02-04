variable "digitalocean_token" {
  description = "API token used to access digital ocean"
}

variable "volumes" {
  description = "List of volumes in format [region:name:size]"
  type        = "list"
}
