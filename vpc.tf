provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc_network" {
  source = "git::https://github.com/cloud-gcp-gpc/modules.git//vpc-network?ref=refs/tags/v2.3"

  network_name   = "vpc-test"
  subnetwork_cidr = ["10.0.0.0/16"]
}
