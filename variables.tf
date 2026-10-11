variable "s3control_multi_region_access_points" {
  description = <<EOT
Map of s3control_multi_region_access_points, attributes below
Required:
    - details (block):
        - name (required)
        - public_access_block (optional, block):
            - block_public_acls (optional)
            - block_public_policy (optional)
            - ignore_public_acls (optional)
            - restrict_public_buckets (optional)
        - region (required, block):
            - bucket (required)
            - bucket_account_id (optional)
Optional:
    - account_id
    - region
EOT

  type = map(object({
    account_id = optional(string)
    region     = optional(string)
    details = object({
      name = string
      public_access_block = optional(object({
        block_public_acls       = optional(bool)
        block_public_policy     = optional(bool)
        ignore_public_acls      = optional(bool)
        restrict_public_buckets = optional(bool)
      }))
      region = list(object({
        bucket            = string
        bucket_account_id = optional(string)
      }))
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.s3control_multi_region_access_points : (
        length(v.details.region) >= 1 && length(v.details.region) <= 20
      )
    ])
    error_message = "Each region list must contain between 1 and 20 items"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

