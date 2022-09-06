resource "azurerm_resource_group" "this" {
  name     = "rg-${var.project}${var.env}-${var.location_attribute}-01"
  location = var.location
  tags = {
    "Project"           = "DevOps"
    "CostCenter"        = "12345678"
    "Owner"             = "rakhil.pilachrey@pwc.com"
    "Customer Contact"  = "rakhil.pilachrey@pwc.com"
    "Technical Contact" = "rakhil.pilachrey@pwc.com"
  }
}
