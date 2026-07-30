# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = ">= 3.80.0"
#     }
#   }
# }

# main.tf

provider "azurerm" {
  features {}
  skip_provider_registration = true
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

# resource "azurerm_resource_group" "aks_rg" {
#   name     = var.resource_group_name
#   location = var.resource_group_location
# }

data "azurerm_resource_group" "aks_rg" {
  name = "sa1_test_eic_BhavinBhavsar"
}


resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_cluster_name
  location            = data.azurerm_resource_group.aks_rg.location
  resource_group_name = data.azurerm_resource_group.aks_rg.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "system"
    node_count = 1
    vm_size    = var.vm_size  # Uses the VM size variable
    host_encryption_enabled = true    
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }

  tags = {
    "resource owner": "bhavin.bhavsar@einfochips.com",
    "delivery manager": "Sachin.Shah1@einfochips.com",
    "Sub Business Unit": "PES_IA",
    "Business Unit": "einfochips",
    "Project Name": "EIC Internal",
    "Create Date": "5-Jan-2026"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "user_pool" {
  name                  = "userpool"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  vm_size               = var.vm_size  # Uses the same VM size variable
  node_count            = 1
  mode                  = "User"
  host_encryption_enabled = true   # <-- REQUIRED for policy
  
  node_labels = {
    "nodepool-type" = "user-nodes"
  }

    tags = {
    "resource owner": "bhavin.bhavsar@einfochips.com",
    "delivery manager": "Sachin.Shah1@einfochips.com",
    "Sub Business Unit": "PES_IA",
    "Business Unit": "einfochips",
    "Project Name": "EIC Internal",
    "Create Date": "5-Jan-2026"
  }
}