output "cluster_id" {
  description = "Cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID"
  value       = module.eks.cluster_security_group_id
}
