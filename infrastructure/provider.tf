terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }

  backend "azurerm" {
    # Dynamically injected by Azure DevOps
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}