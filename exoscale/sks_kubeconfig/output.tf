output "host" {
  description = "The hostname (in form of URI) of the Kubernetes API. Can be sourced from KUBE_HOST."
  value       = lookup(local.sks_kubeconfig_cluster_0, "server", "")
}

output "client_certificate" {
  description = "PEM-encoded client certificate for TLS authentication. Can be sourced from KUBE_CLIENT_CERT_DATA."
  value       = lookup(local.sks_kubeconfig_users_0, "client-certificate-data", "")
  sensitive   = true
}

output "client_key" {
  description = "PEM-encoded client certificate key for TLS authentication. Can be sourced from KUBE_CLIENT_KEY_DATA."
  value       = lookup(local.sks_kubeconfig_users_0, "client-key-data", "")
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = "PEM-encoded root certificates bundle for TLS authentication. Can be sourced from KUBE_CLUSTER_CA_CERT_DATA."
  value       = lookup(local.sks_kubeconfig_cluster_0, "certificate-authority-data", "")
  sensitive   = true
}
