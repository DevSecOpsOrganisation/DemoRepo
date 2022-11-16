resource "google_compute_firewall" "o03-ni-gcp" {
  name = "devsecops-fw-single-ip-egress"
  network = "devsecops-network-gcp"

  allow {
    protocol = "udp"
  }

  direction = "INGRESS"
  priority = "2300"
  destination_ranges = [
    "192.168.1.1/32"]
}