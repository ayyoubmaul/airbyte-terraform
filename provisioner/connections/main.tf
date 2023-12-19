terraform {
  required_providers {
    airbyte = {
      source = "airbytehq/airbyte"
      version = "0.3.7"
    }
  }
}

module "sources" {
  source            = "../sources"
  workspace_id = var.workspace_id
}

module "destinations" {
  source            = "../destinations"
  workspace_id = var.workspace_id
}

resource "airbyte_connection" "faker_to_postgres" {
  name = "Faker to Postgres"
  source_id = module.sources.src_faker_source_id
  destination_id = module.destinations.dest_postgres_destination_id
  schedule = {
    schedule_type   = "manual"
  }
}
