resource "google_storage_bucket" "static" {
 name          = "python-practice-407605-new12345"
 location      = "US"
 storage_class = "STANDARD"

<<<<<<< HEAD
 uniform_bucket_level_access = true 
 lifecycle {
   prevent_destroy = true
 }

  
=======
 uniform_bucket_level_access = true
 force_destroy               = false
      
>>>>>>> 03f50c5e6c82817b4f1cccac44d9f33e3c084c46
}
resource "google_compute_instance" "vm" {
  name              = "terraform-instance-123"
  machine_type      = "n2-standard-2"
  zone              = "us-central1-a"
  lifecycle {
    prevent_destroy = true
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





  


    
  
    




  



