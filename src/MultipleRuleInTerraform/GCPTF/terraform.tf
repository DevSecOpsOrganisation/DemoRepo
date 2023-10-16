resource "google_compute_firewall" "i02-ni-gcp" {
  name    = "devsecops-fw-single-port"
  network = "devsecops-network-gcp"

  allow {
    protocol = var.udp_protocol
    ports    = [
      "389"
    ]
  }
  allow {
    protocol = var.tcp_protocol
    ports    = [
      "380"
    ]
  }

  allow {
    protocol = var.tcp_protocol
    ports    = [
      "3020-3050",
      "9000"
    ]
  }
  allow {
    protocol = var.udp_protocol
    ports    = [
      "3020-3050",
      "9000"
    ]
  }


  description   = "INGRESS"
  direction     = "INGRESS"
  priority      = 1100
  source_ranges = var.all_ips


}
