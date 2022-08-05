output "id" {
  value       = module.exoscale_sks_cluster.id
  description = "The SKS cluster ID."
}

output "aggregation_ca" {
  value       = module.exoscale_sks_cluster.aggregation_ca
  description = "The CA certificate (in PEM format) for TLS communications between the control plane and the aggregation layer (e.g. metrics-server)."
  sensitive   = true
}

output "control_plane_ca" {
  value       = module.exoscale_sks_cluster.aggregation_ca
  description = "The CA certificate (in PEM format) for TLS communications between control plane components."
  sensitive   = true
}

output "created_at" {
  value       = module.exoscale_sks_cluster.created_at
  description = "The cluster creation date."
}

output "endpoint" {
  value       = module.exoscale_sks_cluster.endpoint
  description = "The cluster API endpoint."
}

output "kubelet_ca" {
  value       = module.exoscale_sks_cluster.kubelet_ca
  description = "The CA certificate (in PEM format) for TLS communications between kubelets and the control plane."
  sensitive   = true
}

output "nodepools" {
  value       = module.exoscale_sks_cluster.nodepools
  description = "The list of exoscale_sks_nodepool (IDs) attached to the cluster."
}

output "state" {
  value       = module.exoscale_sks_cluster.state
  description = "The cluster state."
}

output "sks-security-groupd-id" {
  value       = module.exoscale_security_group.id
  description = "The security group ID."
}

# sks_kubeconfig
output "host" {
  description = "The hostname (in form of URI) of the Kubernetes API. Can be sourced from KUBE_HOST."
  value       = module.exoscale_sks_kubeconfig.host
  sensitive   = true
}

output "client_certificate" {
  description = "PEM-encoded client certificate for TLS authentication. Can be sourced from KUBE_CLIENT_CERT_DATA."
  value       = module.exoscale_sks_kubeconfig.client_certificate
  sensitive   = true
}

output "client_key" {
  description = "PEM-encoded client certificate key for TLS authentication. Can be sourced from KUBE_CLIENT_KEY_DATA."
  value       = module.exoscale_sks_kubeconfig.client_key
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = "PEM-encoded root certificates bundle for TLS authentication. Can be sourced from KUBE_CLUSTER_CA_CERT_DATA."
  value       = module.exoscale_sks_kubeconfig.cluster_ca_certificate
  sensitive   = true
}
