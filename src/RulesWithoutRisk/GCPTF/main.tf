resource "google_compute_firewall" "i02-ni-gcp" {
  name    = "devsecops-fw-single-port"
  network = "devsecops-network-gcp"

  allow {
    protocol = "tcp"
    ports    = [
      "30-30"
    ]
  }

  description   = "INGRESS"
  direction     = "INGRESS"
  priority      = 1100
  source_ranges = [
    "10.10.10.10/32"
  ]


}
