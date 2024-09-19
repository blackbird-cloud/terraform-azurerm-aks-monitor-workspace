<!-- BEGIN_TF_DOCS -->
# Terraform Azurerm Aks Monitor Workspace Module
Terraform module to create an Azure Monitor Workspace for AKS

[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://blackbird.cloud)

## Example
```hcl
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

  clusters = {
    non_prod = local.non_prod.aks_id
    prod     = local.prod.aks_id
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3 |

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_alert_prometheus_rule_group.kubernetes_recording_rules_rule_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_prometheus_rule_group) | resource |
| [azurerm_monitor_alert_prometheus_rule_group.node_recording_rules_rule_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_alert_prometheus_rule_group) | resource |
| [azurerm_monitor_data_collection_endpoint.dce](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_data_collection_endpoint) | resource |
| [azurerm_monitor_data_collection_rule.dcr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_data_collection_rule) | resource |
| [azurerm_monitor_data_collection_rule_association.dcra](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_data_collection_rule_association) | resource |
| [azurerm_monitor_workspace.amw](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_workspace) | resource |
| [azurerm_private_endpoint.amw](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_clusters"></a> [clusters](#input\_clusters) | List of Kubernetes clusters to monitor. | `map(string)` | n/a | yes |
| <a name="input_monitor_workspace_name"></a> [monitor\_workspace\_name](#input\_monitor\_workspace\_name) | Name of the Azure Monitor workspace. | `string` | n/a | yes |
| <a name="input_private_endpoint"></a> [private\_endpoint](#input\_private\_endpoint) | Private endpoint to connect to the Azure Monitor workspace. | <pre>object({<br>    subnet_id         = optional(string)<br>    subresource_names = optional(list(string))<br>  })</pre> | `{}` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Enable or disable public network access to the Azure Monitor workspace. | `bool` | `true` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_clusters"></a> [clusters](#output\_clusters) | The list of Kubernetes clusters to monitor. |
| <a name="output_default_data_collection_endpoint_id"></a> [default\_data\_collection\_endpoint\_id](#output\_default\_data\_collection\_endpoint\_id) | The default data collection rule ID of the Azure Monitor Workspace. |
| <a name="output_default_data_collection_rule_id"></a> [default\_data\_collection\_rule\_id](#output\_default\_data\_collection\_rule\_id) | The default data collection rule ID of the Azure Monitor Workspace. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Azure Monitor Workspace. |
| <a name="output_name"></a> [name](#output\_name) | The URL of the Azure Monitor Workspace. |
| <a name="output_private_endpoint_dns"></a> [private\_endpoint\_dns](#output\_private\_endpoint\_dns) | The private endpoint DNS to connect to the Azure Monitor Workspace. |
| <a name="output_private_endpoint_id"></a> [private\_endpoint\_id](#output\_private\_endpoint\_id) | The private endpoint ID to connect to the Azure Monitor Workspace. |
| <a name="output_private_endpoint_ips"></a> [private\_endpoint\_ips](#output\_private\_endpoint\_ips) | The private endpoint to connect to the Azure Monitor Workspace. |
| <a name="output_query_endpoint"></a> [query\_endpoint](#output\_query\_endpoint) | The query endpoint of the Azure Monitor Workspace. |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2024 [Blackbird Cloud](https://blackbird.cloud)
<!-- END_TF_DOCS -->