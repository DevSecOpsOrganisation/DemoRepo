resource "google_compute_firewall" "i02-ni-gcp" {
  name    = "devsecops-fw-single-port"
  network = "devsecops-network-gcp"

  allow {
    protocol = "tcp"
    ports    = [
      "389"
    ]
  }
  allow {
    protocol = "udp"
    ports    = [
      "380"
    ]
  }

  allow {
    protocol = "tcp"
    ports = [
      "3020-3050",
      "9000"]
  }
  allow {
    protocol = "udp"
    ports = [
      "3020-3050",
      "9000"]
  }


  description   = "INGRESS"
  direction     = "INGRESS"
  priority      = 1100
  source_ranges = [
    "0.0.0.0/0"
  ]

}

resource "google_compute_firewall" "i02-ni-gcp" {
  name    = "devsecops-fw-single-port"
  network = "devsecops-network-gcp"

  allow {
    protocol = "tcp"
    ports = [
      "25-400",
      "465", "587"]
  }

  direction = "EGRESS"
  priority = "2200"
  destination_ranges = [
    "0.0.0.0/0"]
}