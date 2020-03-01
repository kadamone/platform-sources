# MAIN
variable "google_project_id" {}
variable "google_region" {}
variable "google_zone" {}
#variable "environment_name" {}

# IAM

#variable "project_admins" {
#  type = set(string)
#}

#variable "project_editors" {
#  type = set(string)
#}

#variable "project_viewers" {
#  type = set(string)
#}

# KUBERNETES

variable "k8s_cluster_name" {}

# FLUX

variable "flux_git_url" {}

variable "flux_git_path" {}

# POSTGRES

#variable "postgres_machine_type" {}

variable "dns_domain" {}

#variable "main_node_pool_machine_type" {}

#variable "main_node_pool_count" {}

#variable "concourse_worker_machine_type" {}

#variable "concourse_worker_node_pool_count" {}

#variable "vault_bucket_name" {}

#variable "slack_auth_token" {}
