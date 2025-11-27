# Variables for infrastructure configuration
# Sensitive values should be set in Terraform Cloud workspace variables

variable "vercel_team_id" {
  description = "Vercel team ID (optional, for team deployments)"
  type        = string
  default     = null
}

variable "github_repo" {
  description = "GitHub repository in format owner/repo"
  type        = string
  default     = "JimmyJames890/legendary-octo-palm-tree"
}

variable "domain" {
  description = "Base domain for the application"
  type        = string
  default     = ""
}

variable "sentry_dsn" {
  description = "Sentry DSN for error tracking"
  type        = string
  default     = ""
  sensitive   = true
}

variable "axiom_api_token" {
  description = "Axiom API token for logging"
  type        = string
  default     = ""
  sensitive   = true
}

variable "matomo_site_id" {
  description = "Matomo site ID for analytics"
  type        = string
  default     = ""
}
