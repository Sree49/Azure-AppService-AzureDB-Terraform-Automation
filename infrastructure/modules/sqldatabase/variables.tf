variable resource_group_name {
  type        = string
}

variable location {
    type=string
}

variable adminuser {
  type        = string
  
}
variable password {
  type        = string
  sensitive = true
}
variable servername {
  type        = string
}
variable dbname {
  type        = string
}


