variable "aws_region" {
  type        = string
  description = "AWS Region ap-southeast-6 for vault-cluster"
  default     = "ap-southeast-1"
}

variable "HCP_CLIENT_SECRET" {
  description = "The secret for the HCP client."
  type        = string
}

variable "HCP_CLIENT_ID" {
  description = "The ID for the HCP client."
  type        = string
}
