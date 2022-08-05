resource "exoscale_sks_kubeconfig" "sks_kubeconfig" {
  cluster_id            = var.cluster_id
  zone                  = var.zone
  groups                = var.groups
  user                  = var.user
  ttl_seconds           = var.ttl_seconds
  early_renewal_seconds = var.early_renewal_seconds
}