
resource "azurerm_service_plan" "sp_app_service_plan" {
    name = "appservicefortestyfkt"
    location = "eastus2"
    resource_group_name = "saediprg01"
 os_type = "Windows"
 sku_name = "S1"
  
}
resource "azurerm_windows_function_app" "windows_function" {
  name = var.function_app_name

  service_plan_id     = azurerm_service_plan.sp_app_service_plan.id
  location            = var.location
  resource_group_name = var.resource_group_name

  storage_account_name          = var.storage_account_name
  storage_account_access_key    =  var.storage_account_access_key
#   storage_uses_managed_identity = var.storage_uses_managed_identity ? true : null
site_config {
  
}
  #virtual_network_subnet_id = var.function_app_vnet_integration_subnet_id

#   site_config {
#     always_on = false
#     application_stack {
#       current_stack     = var.stack
#       dotnet_version    = var.stack_version
#       } 
# 	virtual_application {
#       physical_path = "site\\wwwroot" 
#       preload       = false 
#       virtual_path  = "/" 
#       }
#   }
#   dynamic "ip_restriction" {
#       for_each = toset(var.IP_ADDRESSES)
#       content {
#         ip_address = ip_restriction.value.cidr
#         #name = ip_restriction.value.description
#      }
#     }
  
  
  identity {
		type   = "SystemAssigned"
  }

  tags = local.tags
}
