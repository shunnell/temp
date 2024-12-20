#!/bin/bash

set -e

# Check if backend state file is accessible
if ! terraform state list > /dev/null 2>&1; then
  echo "Terraform state file is not accessible. Ensure backend configuration is correct."
  exit 1
fi

# Destroy Terraform-managed infrastructure
echo "Destroying Terraform-managed infrastructure..."
terraform destroy -auto-approve

echo "Cleanup complete."