module "resource_group" {
  source       = "./modules/resource_group"
  location     = var.location
  resource_group_name = var.resource_group_name
}

module "vnet" {
  source              = "./modules/vnet"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  vnetname           = var.vnetname
  subnetname         = var.subnetname
  vnet_cidr           = var.vnet_cidr
  subnet_cidr         = var.subnet_cidr
}

module "sqldatabase" {
  source              = "./modules/sqldatabase"
    location            = module.resource_group.location
  resource_group_name = module.resource_group.name
servername= var.servername
password= var.password
dbname= var.dbname
adminuser= var.adminuser
}



