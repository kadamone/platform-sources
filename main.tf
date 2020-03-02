module "nucleus" {
  source = "github.com/kadamone/k8s-first-test-nucleus.git"
  #source = "../nucleus-sources"

  google_project_id = var.google_project_id
  google_region     = var.google_region
  google_zone       = var.google_zone
  #environment_name  = var.environment_name

  #project_admins  = var.project_admins
  #project_editors = var.project_editors
  #project_viewers = project_viewers

  k8s_cluster_name  = var.k8s_cluster_name
  #postgres_machine_type = var.postgres_machine_type

  flux_git_url  = var.flux_git_url
  flux_git_path = var.flux_git_path
  #dns_domain    = var.dns_domain

  #slack_auth_token  = var.slack_auth_token

# Toggle

  #flux_manifest_generation  = false
  #dns_enabled               = true
  #postgres_enabled          = true

  #k8s_node_pools = [
  #  {
  #    name = "main"
  #    node_count = var.main_node_pool_count
  #    machine_type = var.main_node_pool_machine_type
  #    taints = []
  #  },
  #  {
  #    name = "concourse-worker"
  #    node_count = var.concourse_worker_node_pool_count
  #    machine_type = var.concourse_worker_machine_type
  #    taints = [{
  #      key = "concourse-worker"
  #      value = "concourse"
  #      effect = "NO_ScHEDULE"
  #      }]
  #  }
  #]

  k8s_namespaces = [
    {
      name = "concourse"
      has_public_ip = false #true
      dns_records = ["ci.${var.dns_domain}"]
      uses_postgres = false #true
      uses_mysql = false
      uses_mongodb_atlas = false
      uses_slack_alert = false #true
    },
    {
      name = "vault"
      has_public_ip = false #true
      dns_records = ["vault.${var.dns_domain}"]
      uses_postgres = false
      uses_mysql = false
      uses_mongodb_atlas = false
      uses_slack_alert = false
    }
  ]
}

#data "google_client_config" "default" {}

#data "google_container_cluster" "kube" {
#  name      = module.nucleus.cluster_name
#  location  = var.google_region
#}
