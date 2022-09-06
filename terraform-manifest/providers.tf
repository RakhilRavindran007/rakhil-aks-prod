terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.19.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.27.0"
    }
  }

  /*backend "azurerm" {
    resource_group_name  = "rg-terraform-dev-we-01"
    storage_account_name = "stoterraformdevwe432"
    container_name       = "tfstate"
    key                  = "aks-terraform.tfstate"
  }*/
}

provider "azurerm" {
  features {

  }
}