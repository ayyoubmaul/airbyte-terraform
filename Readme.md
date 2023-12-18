![Alt text](image.png)

# How to Start

1. Start Airbyte Locally
```
git clone --depth 1 https://github.com/airbytehq/airbyte.git
cd airbyte
./run-ab-platform.sh
```
2. Open http://localhost:8000/ to view Airbyte UI
3. Start Postgres using docker `docker-compose -f docker-compose-postgres.yaml up -d`
4. Export variables to be used in Terraform Variables
```
export TF_VAR_username=airbyte
export TF_VAR_password=password
export TF_VAR_workspace_id="2c7836b6-ea28-4052-bb2b-c36d58935064"
```
5. Create sources, destinations, and connections in Airbyte using Terraform
```
# Enter to provisioner directory
cd provisioner

# Get local Terraform module
terraform get

# Initialize Terraform project
terraform init

# Plan and apply configuration
terraform plan
terraform apply
```
