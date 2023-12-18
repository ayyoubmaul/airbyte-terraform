terraform {
  required_providers {
    airbyte = {
      source = "airbytehq/airbyte"
      version = "0.3.7"
    }
  }
}


resource "airbyte_destination_postgres" "dest_postgres" {
  configuration = {
    database        = "airbyte"
    host            = "172.20.0.11"
    password        = "postgres"
    port            = 5432
    schema          = "public"
    username        = "postgres"
    ssl_mode = {
      disable = {}
    }
  }
  name          = "Postgres Faker Destination"
  workspace_id  = var.workspace_id
}
