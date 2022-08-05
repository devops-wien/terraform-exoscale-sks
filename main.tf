module "exoscale_sks_cluster" {
  source         = "./exoscale/sks_cluster"
  zone           = var.zone
  name           = var.name
  description    = var.description
  auto_upgrade   = var.auto_upgrade
  exoscale_ccm   = var.exoscale_ccm
  metrics_server = var.metrics_server
  service_level  = var.service_level
  labels         = var.labels
}

module "exoscale_sks_kubeconfig" {
  source                = "./exoscale/sks_kubeconfig"
  depends_on            = [module.exoscale_sks_cluster.id]
  cluster_id            = module.exoscale_sks_cluster.id
  zone                  = var.zone
  groups                = var.groups
  user                  = var.user
  ttl_seconds           = var.ttl_seconds
  early_renewal_seconds = var.early_renewal_seconds
}

module "exoscale_security_group" {
  source           = "./exoscale/security_group"
  description      = var.description
  external_sources = var.external_sources
  name             = var.name
}

module "security_group_rule" {
  source            = "./exoscale/security_group_rule"
  security_group_id = module.exoscale_security_group.id
}
