
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
variable "vnet_cidr" { type = string }
variable "subnet_cidr" { type = string }
variable "vm_size" { type = string }
variable "node_count" { type = number }
variable "app_image_tag" {
  type    = string
  default = "latest"
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
