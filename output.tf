output "id" {
  value = module.exoscale_sks_cluster.id
}

output "aggregation_ca" {
  value = module.exoscale_sks_cluster.aggregation_ca
}

output "created_at" {
  value = module.exoscale_sks_cluster.created_at
}

output "endpoint" {
  value = module.exoscale_sks_cluster.endpoint
}

output "kubelet_ca" {
  value = module.exoscale_sks_cluster.kubelet_ca
}

output "nodepools" {
  value = module.exoscale_sks_cluster.nodepools
}

output "state" {
  value = module.exoscale_sks_cluster.state
}

output "sks-security-groupd-id" {
  value = module.exoscale_security_group.id
}