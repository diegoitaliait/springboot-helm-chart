provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "rg-diego-lab"
  location = "West US 2"

  tags = {
    environment = "Demo"
  }
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "aks-diego-lab"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "aks-diego-lab"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_password
  }

  role_based_access_control {
    enabled = false
  }

  tags = {
    environment = "Demo"
  }
}
