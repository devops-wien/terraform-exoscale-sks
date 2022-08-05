output "host" {
  description = "The hostname (in form of URI) of the Kubernetes API. Can be sourced from KUBE_HOST."
  value       = lookup(local.sks_kubeconfig, "server", "")
  sensitive   = true
}

output "client_certificate" {
  description = "PEM-encoded client certificate for TLS authentication. Can be sourced from KUBE_CLIENT_CERT_DATA."
  value       = lookup(local.sks_kubeconfig, "client_certificate", "")
  sensitive   = true
}

output "client_key" {
  description = "PEM-encoded client certificate key for TLS authentication. Can be sourced from KUBE_CLIENT_KEY_DATA."
  value       = lookup(local.sks_kubeconfig, "client_key", "")
  sensitive   = true
}

output "cluster_ca_certificate" {
  description = "PEM-encoded root certificates bundle for TLS authentication. Can be sourced from KUBE_CLUSTER_CA_CERT_DATA."
  value       = lookup(local.sks_kubeconfig, "cluster_ca_certificate", "")
  sensitive   = true
}
