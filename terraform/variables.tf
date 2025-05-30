variable "region" {
  description = "AWS region to deploy resources"
  default     = "eu-north-1"
}

variable "module_name" {
  description = "ECR repository name"
  default     = "hcl-appointment-service"
}
