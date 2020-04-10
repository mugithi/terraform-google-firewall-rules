resource "google_compute_firewall" "allow_fw" {
  name          = "vpc-${var.network}-firewall-${var.tags}"
  description   = "Creates firewall rule for target instances"
  network       = var.network

  allow {
    protocol = var.protocol
    ports    = var.protocol == "tcp" || var.protocol == "udp" ? var.ports : []
  }

  target_tags   = var.tags
  source_ranges = var.source_ranges
}
