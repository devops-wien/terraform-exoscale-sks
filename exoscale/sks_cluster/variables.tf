variable "timeout" {
  description = "Global async operations waiting time in seconds (default: 300)"
  type        = number
  default     = 300
}

variable "zone" {
  description = "(Required) The Exoscale Zone name."
  type        = string
}

variable "name" {
  description = "(Required) The SKS cluster name."
  type        = string
}

variable "description" {
  description = "A free-form text describing the cluster."
  type        = string
}

variable "auto_upgrade" {
  description = "Enable automatic upgrading of the control plane version (boolean; default: false)."
  type        = bool
  default     = false
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
  default     = "pro"
}

variable "labels" {
  description = "A map of key/value labels."
  type        = map(string)
}

#todo: oidc block - An OpenID Connect configuration to provide to the Kubernetes API server (may only be set at creation time).
