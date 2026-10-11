output "s3control_multi_region_access_points_id" {
  description = "Map of id values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3control_multi_region_access_points_account_id" {
  description = "Map of account_id values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "s3control_multi_region_access_points_alias" {
  description = "Map of alias values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "s3control_multi_region_access_points_arn" {
  description = "Map of arn values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "s3control_multi_region_access_points_details" {
  description = "Map of details values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => one(v.details) if v.details != null && length(v.details) > 0 }
}
output "s3control_multi_region_access_points_domain_name" {
  description = "Map of domain_name values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "s3control_multi_region_access_points_name" {
  description = "Map of name values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.name if v.name != null && length(v.name) > 0 }
}
output "s3control_multi_region_access_points_region" {
  description = "Map of region values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3control_multi_region_access_points_status" {
  description = "Map of status values across all s3control_multi_region_access_points, keyed the same as var.s3control_multi_region_access_points"
  value       = { for k, v in aws_s3control_multi_region_access_point.s3control_multi_region_access_points : k => v.status if v.status != null && length(v.status) > 0 }
}

