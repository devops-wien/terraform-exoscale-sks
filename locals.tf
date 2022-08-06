locals {
  name = var.name != "" ? var.name : "${var.prefix_name}_${var.zone}"
}
