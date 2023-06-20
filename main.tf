terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.61.0"
    }
  }
}

#configuration provider
provider "azurerm" {
  features {}
  tenant_id       = "e3dcec5f-1b37-48ee-a07f-8bdbd2646b5c"
  subscription_id = "0e09aad1-0711-40d5-be06-c78a8fd5fccf"
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources-2"
  location = "West Europe"
}