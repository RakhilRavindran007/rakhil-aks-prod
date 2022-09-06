resource "azuread_group" "this" {
  display_name     = "${var.project}${var.env}-Cluster-Administrator"
  description      = "${var.project}${var.env}-Cluster-Administrator"
  security_enabled = true
}

