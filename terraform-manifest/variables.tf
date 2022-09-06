variable "project" {
  type        = string
  description = "project name"
}

variable "env" {
  type        = string
  description = "env name"
}

variable "location" {
  type        = string
  description = "location"
}

variable "location_attribute" {
  type        = string
  description = "location attribute"
}

variable "admin_username" {
  default = "adminuser"
}

variable "vm-password" {
  type = string
  #default = "C:\\Users\\rpilachrey001\\Desktop\\Learning\\AKS\\Terraform\\Azure-AKS-Terraform\\AKS-Modules\\ssh-key.pub"
}