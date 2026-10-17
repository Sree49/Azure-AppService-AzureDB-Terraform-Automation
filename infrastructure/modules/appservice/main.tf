resource "azurerm_service_plan" "appserviceplan" {
  name                = var.appserviceplanname
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Windows"
  sku_name            = "B1"
}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.appservicename
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  site_config {
    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v10.0"
    }
  } 
}

resource "azurerm_windows_web_app_slot" "stagingslot" {
  name           = "test"
  app_service_id = azurerm_windows_web_app.webapp.id

  site_config {
    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v10.0"
    }
  } 
}

