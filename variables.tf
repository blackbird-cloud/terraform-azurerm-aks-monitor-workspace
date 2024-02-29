variable "monitor_workspace_name" {
  type        = string
  description = "Name of the Azure Monitor workspace."
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "clusters" {
  description = "List of Kubernetes clusters to monitor."
  type        = map(string)
}
