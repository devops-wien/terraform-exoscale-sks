output "id" {
  value = module.exoscale_sks_cluster.id
  description = "The SKS cluster ID."
}

output "aggregation_ca" {
  value = module.exoscale_sks_cluster.aggregation_ca
  description = "The CA certificate (in PEM format) for TLS communications between the control plane and the aggregation layer (e.g. metrics-server)."
}

output "control_plane_ca" {
  value = module.exoscale_sks_cluster.aggregation_ca
  description = "The CA certificate (in PEM format) for TLS communications between control plane components."
}

output "created_at" {
  value = module.exoscale_sks_cluster.created_at
  description = "The cluster creation date."
}

output "endpoint" {
  value = module.exoscale_sks_cluster.endpoint
  description = "The cluster API endpoint."
}

output "kubelet_ca" {
  value = module.exoscale_sks_cluster.kubelet_ca
  description = "The CA certificate (in PEM format) for TLS communications between kubelets and the control plane."
}

output "nodepools" {
  value = module.exoscale_sks_cluster.nodepools
  description = "The list of exoscale_sks_nodepool (IDs) attached to the cluster."
}

output "state" {
  value = module.exoscale_sks_cluster.state
  description = "The cluster state."
}

output "sks-security-groupd-id" {
  value = module.exoscale_security_group.id
  description = "The security group ID."
}

# sks_kubeconfig
output "kubeconfig" {
  description = "The generated Kubeconfig (YAML content)."
  value = module.exoscale_sks_kubeconfig.kubeconfig
  sensitive = true
}
