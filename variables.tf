
variable "function_app_name" {
    default = ""
    description = "name of function"
  
}


variable "stack" {
  description = "Project stack name."
  type        = string
}

variable "stack_version" {
  description = "Project stack version."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
}

variable "location" {
  description = "Azure location for Function App and related resources."
  type        = string
}


variable "app_service_plan_id" {
  description = "ID of the App Service Plan for the Function App."
  type        = string
}


variable "identity_type" {
  description = "Add an Identity (MSI) to the function app. Possible values are SystemAssigned or UserAssigned."
  type        = string
  default     = "SystemAssigned"
}

# variable "site_config" {
#   description = "Site config for Function App. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service.html#site_config. IP restriction attribute is not managed in this block."
#   type        = any
#   default     = {}
# }


variable "storage_uses_managed_identity" {
  description = "Whether the Function App use Managed Identity to access the Storage Account. **Caution** This disable the storage keys on the Storage Account if created within the module."
  type        = bool
  default     = false
}
variable "storage_account_access_key" {
  description = "Storage account access key."
  type        = string
  default     = ""
}
variable "storage_account_name" {
    type = string
    default = ""
  
}

