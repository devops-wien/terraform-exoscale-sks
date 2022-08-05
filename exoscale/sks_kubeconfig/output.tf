output "kubeconfig" {
  description = "The generated Kubeconfig (YAML content)."
  value = exoscale_sks_kubeconfig.sks_kubeconfig
}
