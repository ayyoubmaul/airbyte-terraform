terraform {
  required_providers {
    airbyte = {
      source = "airbytehq/airbyte"
      version = "0.3.7"
    }
  }
}

module "src_faker" {
  source            = "../sources"
  workspace_id = var.workspace_id
}

module "dest_postgres" {
  source            = "../destinations"
  workspace_id = var.workspace_id
}

resource "airbyte_connection" "faker_to_postgres" {
  name = "Faker to Postgres"
  source_id = module.src_faker.src_faker_source_id
  destination_id = module.dest_postgres.dest_postgres_destination_id
  schedule = {
    schedule_type   = "manual"
  }
}
