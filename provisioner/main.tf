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

# resource "airbyte_source_faker" "src_faker" {
#   configuration = {
#     always_updated    = false
#     count             = 9
#     parallelism       = 8
#     records_per_slice = 1
#     seed              = 5
#   }
#   name          = "Source Faker"
#   workspace_id  = var.workspace_id
# }

# resource "airbyte_destination_postgres" "dest_postgres" {
#   configuration = {
#     database        = "airbyte"
#     host            = "172.20.0.11"
#     password        = "postgres"
#     port            = 5432
#     schema          = "public"
#     username        = "postgres"
#     ssl_mode = {
#       disable = {}
#     }
#   }
#   name          = "Postgres Faker Destination"
#   workspace_id  = var.workspace_id
# }

# resource "airbyte_connection" "faker_postgres" {
#   name = "Faker to Postgres"
#   source_id = airbyte_source_faker.src_faker.source_id
#   destination_id = airbyte_destination_postgres.dest_postgres.destination_id
#   schedule = {
#     schedule_type   = "manual"
#   }

# }

module "connections" {
    source = "./connections"
}
