resource "google_artifact_registry_repository" "my-repo" {
  location = "us-central1"
  repository_id = "labdevops"
  description = "Imagens-Docker"
  format = "DOCKER"
}

variable "database_password" {
    type = "grupo03"
}
variable "database_user" {
    type = "grupo03"
}

resource "google_sql_database_instance" "instance" {
    name="spotmusic"
    region="us-east4"
    database_version="MYSQL_8_0"
    deletion_protection = false
    settings{
        tier="db-f1-micro"
    }
}

resource "google_sql_database" "database"{
    name="playlist"
    instance=google_sql_database_instance.instance.name
}

resource "google_sql_user" "database-user" {
    name = var.database_user
    instance = google_sql_database_instance.instance.name
    password = var.database_password
}