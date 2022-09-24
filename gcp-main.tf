resource “google_sql_database_instance” “master” {
    name = "teste_gp03"
    database_version = "MYSQL_8_0"
    region = "${var.region}"
    settings {
  tier = "db-n1-standard-2"
  }
}