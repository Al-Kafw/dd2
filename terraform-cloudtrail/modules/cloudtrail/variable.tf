variable "cloudwatch_log_group_name" {
  description = "The name of the CloudWatch Log Group that receives CloudTrail events."
  default     = "cloudtrail-events"
  type        = string
}

variable "enabled" {
  description = "Enables logging for the trail. Defaults to true. Setting this to false will pause logging."
  default     = true
  type        = bool
}

variable "log_retention_days" {
  description = "Number of days to keep AWS logs around in specific log group."
  default     = 90
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the AWS S3 bucket."
  type        = string
}

variable "org_trail" {
  description = "Whether or not this is an organization trail. Only valid in master account."
  default     = "false"
  type        = string
}

variable "key_deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be 7-30 days.  Default 30 days."
  default     = 30
  type        = string
}

variable "trail_name" {
  description = "Name for the Cloudtrail"
  default     = "cloudtrail"
  type        = string
}

variable "iam_role_name" {
  description = "Name for the CloudTrail IAM role"
  default     = "cloudtrail-cloudwatch-logs-role"
  type        = string
}

variable "s3_key_prefix" {
  description = "S3 key prefix for CloudTrail logs"
  default     = "cloudtrail"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to CloudTrail resources."
  default     = { Automation = "Terraform" }
  type        = map(string)
}
variable "is_multi_region_trail" {
  type        = bool
  default     = false
  description = "enable cloudtrail for all region"
}
variable "enable_log_file_validation" {
  type        = bool
  default     = false
  description = "enable log file validation"
}
variable "include_global_service_events" {
  type        = bool
  default     = false
  description = "Boolean variable to Include the global service events"
}
variable "include_management_events" {
  type        = bool
  default     = false
  description = "Bool variable for include management events"
}
variable email {
  type        = string
  default     = ""
  description = "email for the sns subscriptions"
}
