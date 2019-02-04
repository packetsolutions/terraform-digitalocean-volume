resource "digitalocean_volume" "volumes" {
  count  = "${length(var.volumes)}"
  region = "${element(split(":", element(var.volumes, count.index)), 0)}"
  name   = "${element(split(":", element(var.volumes, count.index)), 1)}"
  size   = "${element(split(":", element(var.volumes, count.index)), 2)}"
}
