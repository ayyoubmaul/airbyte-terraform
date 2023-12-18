terraform {
  required_providers {
    airbyte = {
      source = "airbytehq/airbyte"
      version = "0.3.7"
    }
  }
}


resource "airbyte_source_faker" "src_faker" {
  configuration = {
    always_updated    = false
    count             = 9
    parallelism       = 8
    records_per_slice = 1
    seed              = 5
  }
  name          = "Source Faker"
  workspace_id  = var.workspace_id
}
