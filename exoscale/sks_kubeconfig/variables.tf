variable "cluster_id" {
  description = "(Required) The parent exoscale_sks_cluster ID."
  type        = string
}

variable "zone" {
  description = "(Required) The Exoscale Zone name."
  type        = string
}

variable "groups" {
  description = "(Required) Group names in the generated Kubeconfig. The certificate present in the Kubeconfig will have these roles set in the Organization field."
  type        = list(string)
}

variable "user" {
  description = "(Required) User name in the generated Kubeconfig. The certificate present in the Kubeconfig will also have this name set for the CN field."
  type        = string
}

variable "ttl_seconds" {
  description = "The Time-to-Live of the Kubeconfig, after which it will expire / become invalid (seconds; default: 2592000 = 30 days)."
  type        = number
  default     = 2592000
}

variable "early_renewal_seconds" {
  description = "If set, the resource will consider the Kubeconfig to have expired the given number of seconds before its actual CA certificate or client certificate expiry time. This can be useful to deploy an updated Kubeconfig in advance of the expiration of its internal current certificate. Note however that the old certificate remains valid until its true expiration time since this resource does not (and cannot) support revocation. Also note this advance update can only take place if the Terraform configuration is applied during the early renewal period (seconds; default: 0)."
  type        = number
  default     = 0
}
