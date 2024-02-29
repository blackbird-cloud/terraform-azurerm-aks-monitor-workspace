output "id" {
  description = "The ID of the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.amw.id
}

output "name" {
  description = "The URL of the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.amw.name
}

output "query_endpoint" {
  description = "The query endpoint of the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.amw.query_endpoint
}

output "default_data_collection_endpoint_id" {
  description = "The default data collection rule ID of the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.amw.default_data_collection_endpoint_id
}

output "default_data_collection_rule_id" {
  description = "The default data collection rule ID of the Azure Monitor Workspace."
  value       = azurerm_monitor_workspace.amw.default_data_collection_rule_id
}

output "clusters" {
  description = "The list of Kubernetes clusters to monitor."
  value       = var.clusters
}
