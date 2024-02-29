locals {
  non_prod = {
    aks_id = "00000000-0000-0000-0000-000000000000"
  }
  prod = {
    aks_id = "00000000-0000-0000-0000-000000000000"
  }
}

module "aks_monitor_workspace" {
  source  = "blackbird-cloud/aks-monitor-workspace/azurerm"
  version = "~> 1"

  resource_group_name     = "shared-tools"
  resource_group_location = "westeurope"
  monitor_workspace_name  = "shared-aks-monitor"
  name                    = "shared-aks-monitor"

  clusters = {
    non_prod = local.non_prod.aks_id
    prod     = local.prod.aks_id
  }
}
