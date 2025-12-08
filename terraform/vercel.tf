# Vercel Project Configuration
# Creates environment-specific Vercel projects with Git integration

resource "vercel_project" "main" {
  name      = local.current_env.vercel_project_name
  framework = "astro"
  team_id   = var.vercel_team_id

  git_repository = {
    type = "github"
    repo = var.github_repo
  }

  # Build settings for Astro
  build_command    = "npm run build"
  output_directory = "dist"
  install_command  = "npm install"

  # Root directory (use default)
  root_directory = null

  # Serverless function region
  serverless_function_region = "iad1"
}

# Environment variables for the Vercel project
# Note: Using separate resource to avoid conflicts with inline environment block
resource "vercel_project_environment_variable" "sentry_dsn" {
  count      = var.sentry_dsn != "" ? 1 : 0
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "SENTRY_DSN"
  value      = var.sentry_dsn
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "sentry_auth_token" {
  count      = var.sentry_auth_token != "" ? 1 : 0
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "SENTRY_AUTH_TOKEN"
  value      = var.sentry_auth_token
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "axiom_token" {
  count      = var.axiom_api_token != "" ? 1 : 0
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "AXIOM_TOKEN"
  value      = var.axiom_api_token
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "axiom_dataset" {
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "AXIOM_DATASET"
  value      = var.axiom_dataset
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "matomo_site_id" {
  count      = var.matomo_site_id != "" ? 1 : 0
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "PUBLIC_MATOMO_SITE_ID"
  value      = var.matomo_site_id
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "matomo_url" {
  count      = var.matomo_url != "" ? 1 : 0
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "PUBLIC_MATOMO_URL"
  value      = var.matomo_url
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "environment" {
  project_id = vercel_project.main.id
  team_id    = var.vercel_team_id
  key        = "PUBLIC_ENVIRONMENT"
  value      = local.environment
  target     = ["production", "preview", "development"]
}
