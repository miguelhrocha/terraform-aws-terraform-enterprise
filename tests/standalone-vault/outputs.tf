# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "ptfe_endpoint" {
  value       = module.standalone_vault.tfe_url
  description = "The URL to the TFE application."
}

output "tfe_url" {
  value       = module.standalone_vault.tfe_url
  description = "The URL to the TFE application."
}

output "replicated_console_url" {
  value       = "${module.standalone_vault.tfe_url}:8800"
  description = "Terraform Enterprise Console URL"
}

# Change this to health_check_url for consistency. This requires changing it in ptfe-replicated tests.
output "ptfe_health_check" {
  value       = "${module.standalone_vault.tfe_url}/_health_check"
  description = "The URL with path to access the TFE instance health check."
}

output "health_check_url" {
  value       = module.standalone_vault.health_check_url
  description = "The URL with path to access the TFE instance health check."
}

output "replicated_console_password" {
  value       = module.standalone_vault.replicated_dashboard_password
  description = "The password for the TFE console"
  sensitive   = true
}
