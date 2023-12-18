terraform {
  required_providers {
    airbyte = {
      source = "airbytehq/airbyte"
      version = "0.3.7"
    }
  }
}

provider "airbyte" {
  password = var.password
  username = var.username

  server_url = "http://localhost:8006/v1/"
}

module "connections" {
    source = "./connections"
}
