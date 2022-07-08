output "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server"
  value       = module.observability.cluster_endpoint
}

output "cluster_id" {
  description = "The name/id of the EKS cluster. Will block on cluster creation until the cluster is really ready"
  value       = module.observability.cluster_id
}

output "iam_role_arn" {
  description = "ARN of IAM role"
  value       = module.observability.iam_role_arn
}

output "iam_role_name" {
  description = "Name of IAM role"
  value       = module.observability.iam_role_name
}

output "iam_role_path" {
  description = "Path of IAM role"
  value       = module.observability.iam_role_path
}

output "iam_role_unique_id" {
  description = "Unique ID of IAM role"
  value       = module.observability.iam_role_unique_id
}

