
variable "location" {
  type    = string
  default = "canadacentral"
}
variable "resource_group_name" {
  type    = string
  default = "RG1"
}
variable "vnetname" {
  type    = string
  default = "VNET1"
}
variable "subnetname" {
  type    = string
  default = "SUBNET1"
}
variable "vnet_cidr" {
   type = string
   default="10.0.0.0/16"
    }
variable "subnet_cidr" { 
  type = string
  default="10.0.1.0/24"
   }


variable "servername" {
  type    = string
  default = "serverdb00089"
}
variable "dbname" {
  type    = string
  default = "db00089"
}
variable "adminuser" {
  type    = string
  default = "sreenija"
}
variable "password" {
  type      = string
  sensitive = true
  default   = "Nija1234"
}
variable "appservicename" {
  type=string
  default="webapp00089"
}

variable "appserviceplanname" {
  type=string
  default="webappplan"
}
