resource "azurerm_kubernetes_cluster" "this" {
  name                              = "${var.project}-${var.env}-${var.location_attribute}-01"
  resource_group_name               = azurerm_resource_group.this.name
  location                          = azurerm_resource_group.this.location
  dns_prefix                        = "${var.project}-${var.env}-${var.location_attribute}"
  node_resource_group               = "rg-${var.project}${var.env}-${var.location_attribute}node-01"
  kubernetes_version                = data.azurerm_kubernetes_service_versions.current.latest_version
  role_based_access_control_enabled = true

  tags = {
    "Project"           = "DevOps"
    "CostCenter"        = "12345678"
    "Owner"             = "rakhil.pilachrey@pwc.com"
    "Customer Contact"  = "rakhil.pilachrey@pwc.com"
    "Technical Contact" = "rakhil.pilachrey@pwc.com"
  }

  default_node_pool {
    name                 = "system"
    enable_auto_scaling  = true
    type                 = "VirtualMachineScaleSets"
    zones                = ["1", "2", "3"]
    orchestrator_version = data.azurerm_kubernetes_service_versions.current.latest_version
    min_count            = 1
    max_count            = 3
    vm_size              = "Standard_B2s"
    os_disk_size_gb      = "30"
    vnet_subnet_id       = data.azurerm_subnet.this.id

    node_labels = {
      "app" = "app1"
      "env" = "dev"
    }

    tags = {
      "Project"           = "DevOps"
      "CostCenter"        = "12345678"
      "Owner"             = "rakhil.pilachrey@pwc.com"
      "Customer Contact"  = "rakhil.pilachrey@pwc.com"
      "Technical Contact" = "rakhil.pilachrey@pwc.com"
    }
  }

  identity {
    type = "SystemAssigned"
  }

  azure_active_directory_role_based_access_control {
    managed                = true
    admin_group_object_ids = [azuread_group.this.id]
    azure_rbac_enabled     = true
  }

  linux_profile {
    admin_username = var.admin_username
    ssh_key {
      key_data = file(var.vm-password)
    }
  }

  windows_profile {
    admin_username = "adminuser"
    admin_password = "Admin@1234567$"
  }

  network_profile {
    network_plugin     = "azure"
    network_policy     = "azure"
    service_cidr       = "192.168.0.0/16"
    dns_service_ip     = "192.168.0.5"
    docker_bridge_cidr = "172.17.0.1/16"
  }

  ingress_application_gateway {
    gateway_name = "appgw-${var.project}"
    subnet_cidr = "10.0.5.0/24"
  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.this.id
  }

}