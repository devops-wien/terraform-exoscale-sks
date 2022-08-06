locals {
  name = var.name != "" ? var.name : "sks-${var.zone}"
}
