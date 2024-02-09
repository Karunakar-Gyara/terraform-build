resource "google_storage_bucket" "static" {
 name          = "python-practice-407605-new"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true 
 lifecycle {
   prevent_destroy = true
 }

  
}

provider "google" {
    project = "python-practice-407605"
    credentials = "terraformcloudbuild.json"







  


    
  
    
}



  



