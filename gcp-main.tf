resource "google_artifact_registry_repository" "my-repo" {
  location = "us-central1"
  repository_id = "labdevops"
  description = "Imagens-Docker"
  format = "DOCKER"
}

resource "google_sql_database_instance" "instance" {
    name="hack03"
    region="us-central1"
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
    name = "grupo03"
    instance = google_sql_database_instance.instance.name
    password = "grupo03"
}