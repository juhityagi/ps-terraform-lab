provider "google" {
  credentials = file("key.json")
  project     = "fair-solution-359712"
  region      = "us-west4"
  zone        = "us-west4-b"
}
