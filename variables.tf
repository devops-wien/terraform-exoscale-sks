variable "key" {
  description = "Exoscale account API key"
  type        = string
}

variable "secret" {
  description = "Exoscale account API secret"
  type        = string
}

variable "timeout" {
  description = "Global async operations waiting time in seconds (default: 300)"
  type        = number
  default     = 300
}

variable "zone" {
  description = "(Required) The Exoscale Zone name."
  type        = string
  default     = "at-vie-1"
}

variable "name" {
  description = "(Required) The SKS cluster name."
  type        = string
  default     = "terraform-exoscale-sks"
}

variable "description" {
  description = "A free-form text describing the cluster."
  type        = string
  default     = "default description"
}

variable "auto_upgrade" {
  description = "Enable automatic upgrading of the control plane version (boolean; default: false)."
  type        = bool
  default     = true
}

variable "exoscale_ccm" {
  description = "Deploy the Exoscale Cloud Controller Manager in the control plane (boolean; default: true; may only be set at creation time)."
  type        = bool
  default     = true
}

variable "metrics_server" {
  description = "Deploy the Kubernetes Metrics Server in the control plane (boolean; default: true; may only be set at creation time)."
  type        = bool
  default     = true
}

variable "service_level" {
  description = "The service level of the control plane (pro or starter; default: pro; may only be set at creation time)."
  type        = string
  default     = "starter"
}

variable "labels" {
  description = "A map of key/value labels."
  type        = map(string)
  default     = {}
}

variable "external_sources" {
  description = "A list of external network sources, in CIDR notation."
  type        = list(string)
  default     = []
}

# sks_kubeconfig
variable "groups" {
  description = "Group names in the generated Kubeconfig. The certificate present in the Kubeconfig will have these roles set in the Organization field."
  type        = list(string)
  default = ["system:masters"]
}

variable "user" {
  description = "User name in the generated Kubeconfig. The certificate present in the Kubeconfig will also have this name set for the CN field."
  type        = string
  default = "kubernetes-admin"
}

variable "ttl_seconds" {
  description = "The Time-to-Live of the Kubeconfig, after which it will expire / become invalid (seconds; default: 315360000 = 10 years)."
  type        = number
  default     = 315360000
}

variable "early_renewal_seconds" {
  description = "If set, the resource will consider the Kubeconfig to have expired the given number of seconds before its actual CA certificate or client certificate expiry time. This can be useful to deploy an updated Kubeconfig in advance of the expiration of its internal current certificate. Note however that the old certificate remains valid until its true expiration time since this resource does not (and cannot) support revocation. Also note this advance update can only take place if the Terraform configuration is applied during the early renewal period (seconds; default: 31536000 = 1 year)."
  type        = number
  default     = 31536000
}
