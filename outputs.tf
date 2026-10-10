output "ecr_account_settings_name" {
  description = "Map of name values across all ecr_account_settings, keyed the same as var.ecr_account_settings"
  value       = { for k, v in aws_ecr_account_setting.ecr_account_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ecr_account_settings_region" {
  description = "Map of region values across all ecr_account_settings, keyed the same as var.ecr_account_settings"
  value       = { for k, v in aws_ecr_account_setting.ecr_account_settings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecr_account_settings_value" {
  description = "Map of value values across all ecr_account_settings, keyed the same as var.ecr_account_settings"
  value       = { for k, v in aws_ecr_account_setting.ecr_account_settings : k => v.value if v.value != null && length(v.value) > 0 }
}

