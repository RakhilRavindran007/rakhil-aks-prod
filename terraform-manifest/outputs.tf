output "location" {
  value = azurerm_resource_group.this.location
}

output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "resource_group_id" {
  value = azurerm_resource_group.this.id
}

output "azuread-group-id" {
  value = azuread_group.this.id
}

output "aks-version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

output "aks-cluster-id" {
  value = azurerm_kubernetes_cluster.this.id
}

output "aks-cluster-name" {
  value = azurerm_kubernetes_cluster.this.name
}