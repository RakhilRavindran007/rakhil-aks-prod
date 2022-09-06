resource "azurerm_log_analytics_workspace" "this" {
  name                = "law-${var.project}-${var.env}-${var.location_attribute}-01"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags = {
    "Project"           = "DevOps"
    "CostCenter"        = "12345678"
    "Owner"             = "rakhil.pilachrey@pwc.com"
    "Customer Contact"  = "rakhil.pilachrey@pwc.com"
    "Technical Contact" = "rakhil.pilachrey@pwc.com"
  }
}