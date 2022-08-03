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
