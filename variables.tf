variable "region" {
  description = "The region to target for the creation of resources"
  type        = string
  default     = "us-west-2"
}

variable "k8s_namespace" {
  description = "The kubernetes namespace to use"
  type        = string
  default     = "observability-demo"
}
