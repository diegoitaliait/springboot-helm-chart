variable "suffix_resource_name" {
  description = "name used as suffix for the application"
}

# This variable is load by env variable TF_VAR_client_id
variable "client_id" {
  description = "Azure Kubernetes Service Cluster service principal"
}

# This variable is load by env variable TF_VAR_client_password
variable "client_password" {
  description = "Azure Kubernetes Service Cluster password"
}
