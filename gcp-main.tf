resource "google_artifact_registry_repository" "my-repo" {
  location = "us-central1"
  repository_id = "labdevops"
  description = "Imagens-Docker"
  format = "DOCKER"
}

resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "MYSQL_5_7"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-n1-standard-2"
  }
}

resource "google_sql_database" "database" {
  name     = "playlist"
  instance = "main-instance" 
}

resource "google_sql_user" "users" {
name = "grupo03"
instance = "main-instance"
host = "%"
password = "grupo03"
}