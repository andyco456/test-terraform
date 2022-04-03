 #Boot Diagnostics Storage
 resource "azurerm_storage_account" "diagstorage" {
   name                     = var.stbootdiag
   resource_group_name      = azurerm_resource_group.rg.name
   location                 = azurerm_resource_group.rg.location
   account_kind             = var.stbootdiagkind
   account_tier             = var.stbootdiagtier
   account_replication_type = var.stbootdiagrepl
   enable_https_traffic_only = var.stbootdiaghttps
  
   tags = var.tags

}