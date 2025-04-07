resource "google_compute_instance" "vm" {
  name         = var.vm_name
  project      = var.project_id
  zone         = var.zone
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size_gb
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config {} # Public IP
  }

  service_account {
    email  = var.service_account_email
    scopes = ["cloud-platform"]
  }

  tags = var.tags
}

