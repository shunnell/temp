#!/bin/bash

set -e

# Initialize Terraform
terraform init -backend-config="backend-config.tfvars"

# Validate Terraform configuration
terraform validate

# Plan Terraform deployment
echo "Generating Terraform plan..."
terraform plan -out=tfplan

# Apply Terraform deployment
echo "Applying Terraform configuration..."
terraform apply tfplan

echo "EKS Cluster setup complete."
