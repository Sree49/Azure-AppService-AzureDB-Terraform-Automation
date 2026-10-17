terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  backend "azurerm" {
    # Dynamically injected by the Azure DevOps pipeline at runtime
  }

  
}
provider "azurerm" {
  features {
   
  }
  use_oidc = true
}






