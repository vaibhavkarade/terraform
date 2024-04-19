terraform {
  required_providers {
    #azurerm = {
      #source = "hashicorp/azurerm"
      #version = "3.8.0"
    #}

  }
  backend "azurerm"{
      
  }
  
}

provider "azurerm" {
  
  subscription_id = "777b3b2f-bf8f-4d31-8fe9-1c4911fba328"
  client_id       = "19a24711-729b-4620-b213-299b5efc679b"
  client_secret   = "${CLIENT_SECRET}"
  tenant_id       = "a0112bdf-3d76-41cb-991e-d24e012c3fb2"
  features {}
}

resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}

