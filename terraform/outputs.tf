# Outputs for reference after deployment

output "environment" {
  description = "Current deployment environment"
  value       = local.environment
}

output "vercel_project_name" {
  description = "Vercel project name for this environment"
  value       = local.current_env.vercel_project_name
}

output "vercel_project_id" {
  description = "Vercel project ID"
  value       = vercel_project.main.id
}

output "vercel_project_url" {
  description = "Vercel project URL"
  value       = "https://${vercel_project.main.name}.vercel.app"
}
