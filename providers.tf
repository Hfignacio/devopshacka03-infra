terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.34.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
#provider "google" {


#  project = "hack-aso-grupo-03"
#  region  = "us-central1-b"
#  zone    = "us-west1-b"
#}


provider "google" {

  credentials = file("/home/vagrant/gcpkey.json")

  project = "DEFINIR"
  region  = "us-west1"
  zone    = "us-west1-b"
}