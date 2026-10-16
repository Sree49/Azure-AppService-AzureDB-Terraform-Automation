resource "azurerm_mssql_server" "sqlserver" {
  name                         = var.servername
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.adminuser
  administrator_login_password = var.password
  minimum_tls_version          = "1.2"

 }

 resource "azurerm_mssql_database" "database" {
  name           = var.dbname
  server_id      = azurerm_mssql_server.sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2
  sku_name       = "Basic"
    }

resource "azurerm_mssql_firewall_rule" "sqlfirewall" {
  name             = "FirewallRule1"
  server_id        = azurerm_mssql_server.sqlserver.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}


