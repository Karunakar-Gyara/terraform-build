terraform {
  backend "gcs" {
    bucket = "python-practice-407605-new"
    prefix = "alerts/dev"
  }
}
