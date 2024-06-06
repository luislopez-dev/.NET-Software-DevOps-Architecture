terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
       version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "DOTNET-PROTOTYPE"
  location = "Mexico Central"
}

resource "azurerm_service_plan" "appServicePlan" {
  name = "DOT-NET-PROTOTYPE"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type = "Linux"
  sku_name = "F1"
}

resource "azurerm_linux_web_app" "QA" {
  name = "${azurerm_service_plan.appServicePlan.name}-QA"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  service_plan_id = azurerm_service_plan.appServicePlan.id
  https_only = false
  site_config {
    use_32_bit_worker = true
    always_on = false
  }
}

resource "azurerm_linux_web_app" "Staging" {
  name = "${azurerm_service_plan.appServicePlan.name}-Staging"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  service_plan_id = azurerm_service_plan.appServicePlan.id
  https_only = false
  site_config {
    use_32_bit_worker = true
    always_on = false
  }
}

resource "azurerm_linux_web_app" "Production" {
  name = "${azurerm_service_plan.appServicePlan.name}-Production"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  service_plan_id = azurerm_service_plan.appServicePlan.id
  https_only = false
  site_config {
    use_32_bit_worker = true
    always_on = false
  }
}