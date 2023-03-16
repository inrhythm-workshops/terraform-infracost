terraform plan -out tfplan.binary
terraform show -json tfplan.binary > plan.json