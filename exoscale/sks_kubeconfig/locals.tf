locals {
  sks_kubeconfig = yamldecode(exoscale_sks_kubeconfig.sks_kubeconfig.kubeconfig)
}
