resource "random_string" "random" {
  length = 5
  special = false
  override_special = "/@£$"
}

resource "google_compute_firewall" "allow_fw" {
  name          = "vpc-${var.network}-firewall-${random_string.random}"
  description   = "Creates firewall rule for target instances"
  network       = var.network

  allow {
    protocol = var.protocol
    ports    = var.protocol == "tcp" || var.protocol == "udp" ? var.ports : []
  }

  target_tags   = var.tags
  source_ranges = var.source_ranges
}
