terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.34.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {
  project = "hack-aso-grupo-03"
  region  = "us-west1"
  zone    = "us-west1-b"
}