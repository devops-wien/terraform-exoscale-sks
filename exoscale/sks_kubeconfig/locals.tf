locals {
  sks_kubeconfig = yamldecode(exoscale_sks_kubeconfig.sks_kubeconfig.kubeconfig)
  sks_kubeconfig_clusters = lookup(local.sks_kubeconfig, "clusters", "")
  sks_kubeconfig_cluster_0 = lookup(local.sks_kubeconfig_clusters[0], "cluster", "")
  sks_kubeconfig_users = lookup(local.sks_kubeconfig, "users", "")
  sks_kubeconfig_users_0 = lookup(local.sks_kubeconfig_users[0], "user", "")
}
