terraform {
  backend "gcs" {
    bucket = "python_practice3"
    prefix = "alerts/dev"
  }
}
