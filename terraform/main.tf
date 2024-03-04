resource "random_id" "identity" {
  byte_length = 8
}

resource "azurerm_resource_group" var.resource_group {
  name = "sp-${random.id.identity.hex}"
  location = "Central US"
}

resource "azurerm_user_assigned_identity" var.resource_group {
  location = "Central US"
  name
} 
