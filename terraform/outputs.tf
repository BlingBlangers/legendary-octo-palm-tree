# Outputs for reference after deployment

output "environment" {
  description = "Current deployment environment"
  value       = local.environment
}

output "vercel_project_name" {
  description = "Vercel project name for this environment"
  value       = local.current_env.vercel_project_name
}

# Uncomment when Vercel project resource is added
# output "vercel_project_url" {
#   description = "Vercel project URL"
#   value       = vercel_project.main.url
# }
