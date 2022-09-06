/*resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = "linuxnp"
  mode                  = "User"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  enable_auto_scaling   = true
  min_count             = 1
  max_count             = 3
  orchestrator_version  = data.azurerm_kubernetes_service_versions.current.latest_version
  vm_size               = "Standard_B2s"
  os_type               = "Linux"
  vnet_subnet_id        = data.azurerm_subnet.this.id
  zones                 = ["1", "2", "3"]

  node_labels = {
    "env"  = "dev"
    "mode" = "User"
  }

  tags = {
      "Project"           = "DevOps"
      "CostCenter"        = "12345678"
      "Owner"             = "rakhil.pilachrey@pwc.com"
      "Customer Contact"  = "rakhil.pilachrey@pwc.com"
      "Technical Contact" = "rakhil.pilachrey@pwc.com"
    }
    
}*/