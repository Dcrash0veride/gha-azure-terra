provider "azurerm" {
  features {}
}

provider "random" {

}

terraform {
required_providers {
  random = {
    source = "hashicorp/random"
    version = "3.6.0"
  }
}
  backend "azurerm" {
    resource_group_name = var.state_resource_group_name
    storage_account_name = var.state_storage_account_name
    container_name = "tfstate"
    key = "terraform-base.tfstate"
  }
}

data "azurerm_client_config" "current" {}
