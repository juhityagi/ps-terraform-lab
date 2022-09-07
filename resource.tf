resource "google_compute_instance" "dev_instance" {
  name         = "${var.project_name}-dev-${count.index+1}"
  machine_type = "f1-micro"
  count        = var.instancecheck == true ? 1 : 0

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

}
resource "google_compute_instance" "prod_instance" {
  name         = "${var.project_name}-prod-${count.index+1}"
  machine_type = "f1-micro"
  count        = var.instancecheck == true ? 2 : 0

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }

}
