resource "google_storage_bucket" "static" {
 name          = "python-practice-407605-new12345"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
 force_destroy               = false
      
}
resource "google_compute_instance" "vm" {
  name              = "terraform-instance-123"
  machine_type      = "n2-standard-2"
  zone              = "us-central1-a"
  lifecycle {
    prevent_destroy = false
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}
provider "google" {
    project = "python-practice-407605"
    credentials = "terraformcloudbuild.json"

}





  


    
  
    




  





