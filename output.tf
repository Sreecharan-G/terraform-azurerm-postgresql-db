output "resource_group_name" {
  description = "The name of the resource group in which resources are created"
  value       = local.resource_group_name
}

output "resource_group_location" {
  description = "The location of the resource group in which resources are created"
  value       = local.location
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = element(concat(azurerm_storage_account.storeacc.*.id, [""]), 0)
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = element(concat(azurerm_storage_account.storeacc.*.name, [""]), 0)
}

output "postgresql_server_id" {
  description = "The ID of the PostgreSQL Server"
  value       = azurerm_postgresql_server.main.id
}

output "postgresql_server_fqdn" {
  description = "The FQDN of the PostgreSQL Server"
  value       = azurerm_postgresql_server.main.fqdn
}

output "postgresql_database_id" {
  description = "The ID of the PostgreSQL Database"
  value       = azurerm_postgresql_database.main.id
}
