output "dest_postgres_destination_id" {
  description = "Destination ID of Postgres"
  value       = airbyte_destination_postgres.dest_postgres.destination_id
}

output "dest_postgres_destination_id_2" {
  description = "Destination ID of Postgres 2"
  value       = airbyte_destination_postgres.dest_postgres_2.destination_id
}
