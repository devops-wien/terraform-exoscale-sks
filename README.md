# terraform-exoscale-sks
https://registry.terraform.io/providers/exoscale/exoscale/latest/docs/resources/sks_cluster

## usage

```hcl
//--------------------------------------------------------------------
// Variables
variable "sks_key" {}
variable "sks_secret" {}

//--------------------------------------------------------------------
// Modules
module "sks" {
  source  = "devops-wien/sks/exoscale"
  version = "0.0.1"

  key = "${var.sks_key}"
  secret = "${var.sks_secret}"
}
```
