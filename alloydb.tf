provider "google" {
  project = var.project_id
  region  = var.region
}

module "alloydb_instance" {
  source = "git::https://github.com/cloud-gcp-gpc/modules.git//alloydb-instance?ref=refs/tags/v7"

  instance_name = "alloydb-instance"
  database_name = "test-db"
}
