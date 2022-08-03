resource "exoscale_sks_cluster" "exoscale_sks_cluster" {
  zone           = var.zone
  name           = var.name
  description    = var.description
  auto_upgrade   = var.auto_upgrade
  exoscale_ccm   = var.exoscale_ccm
  metrics_server = var.metrics_server
  service_level  = var.service_level
  labels         = var.labels
}
