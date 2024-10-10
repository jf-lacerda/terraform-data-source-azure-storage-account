terraform {
  required_version = ">= 1.4.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "joaoterraformstate96"
    container_name       = "remote-state"
    key                  = "data-source/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "972ece94-e847-4b77-9820-787145d1b89e"
}

