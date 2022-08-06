output "id" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.id
  description = "The SKS cluster ID."
}

output "aggregation_ca" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.aggregation_ca
  description = "The CA certificate (in PEM format) for TLS communications between the control plane and the aggregation layer (e.g. metrics-server)."
  sensitive   = true
}

output "control_plane_ca" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.control_plane_ca
  description = "The CA certificate (in PEM format) for TLS communications between control plane components."
  sensitive   = true
}

output "created_at" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.created_at
  description = "The cluster creation date."
}

output "endpoint" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.endpoint
  description = "The cluster API endpoint."
}

output "kubelet_ca" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.kubelet_ca
  description = "The CA certificate (in PEM format) for TLS communications between kubelets and the control plane."
  sensitive   = true
}

output "nodepools" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.nodepools
  description = "The list of exoscale_sks_nodepool (IDs) attached to the cluster."
}

output "state" {
  value       = exoscale_sks_cluster.exoscale_sks_cluster.state
  description = "The cluster state."
}