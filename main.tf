provider "google" {
version = "3.5.0"
project = "training-freshers" //enter project name
region = "us-central1" //enter correct location
zone = "us-central1-a" //enter zone
}

resource "google_compute_instance" "vm_instance" {
name = "akhil-terraform-instance"
machine_type = "f1-micro"
tags = ["name","akhil"]
boot_disk {
initialize_params {
image = "debian-cloud/debian-9"
}
}
network_interface {
network = "default"
access_config {
// Ephemeral IP
}
}
}