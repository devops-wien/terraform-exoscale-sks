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
