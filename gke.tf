provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke_cluster" {
  source = "git::https://github.com/cloud-gcp-gpc/modules.git//gke-cluster?ref=refs/tags/v4.1"

  cluster_name = "test-cluster"
  node_count   = 3
  node_size    = "n1-standard-1"
}
