data "azurerm_kubernetes_service_versions" "current" {
  location        = azurerm_resource_group.this.location
  include_preview = false
}

data "azurerm_subnet" "this" {
  name                 = "snet-aksdev-we-01"
  resource_group_name  = "rg-corp-we-01"
  virtual_network_name = "vnet-corp-we-01"
}