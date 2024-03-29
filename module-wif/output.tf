output "pool_id" {
  description = "Identifier for the pool"
  value       = google_iam_workload_identity_pool.pool.id
}

output "pool_state" {
  description = "State of the pool"
  value       = google_iam_workload_identity_pool.pool.state
}

output "pool_name" {
  description = "Name for the pool"
  value       = google_iam_workload_identity_pool.pool.name
}

####

output "provider_id" {
  description = "Identifier for the provider"
  value       = google_iam_workload_identity_pool_provider.provider.id
}

output "provider_state" {
  description = "State of the provider"
  value       = google_iam_workload_identity_pool_provider.provider.state
}

output "provider_name" {
  description = "The resource name of the provider"
  value       = google_iam_workload_identity_pool_provider.provider.name
}