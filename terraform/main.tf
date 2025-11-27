terraform {
  cloud {
    organization = "CJRb8k"

    workspaces {
      tags = ["legendary-octo-palm-tree"]
    }
  }
}

# Configure providers
provider "vercel" {
  # API token set via VERCEL_API_TOKEN environment variable in Terraform Cloud
}

provider "digitalocean" {
  # API token set via DIGITALOCEAN_TOKEN environment variable in Terraform Cloud
}

# Local values for environment-specific configuration
# Extract environment from workspace name (e.g., "legendary-octo-palm-tree-dev" -> "dev")
locals {
  workspace_parts = split("-", terraform.workspace)
  environment     = local.workspace_parts[length(local.workspace_parts) - 1]

  # Environment-specific settings
  env_config = {
    dev = {
      vercel_project_name = "dev-legendary-octo-palm-tree"
      domain_prefix       = "dev"
    }
    preview = {
      vercel_project_name = "preview-legendary-octo-palm-tree"
      domain_prefix       = "preview"
    }
    production = {
      vercel_project_name = "production-legendary-octo-palm-tree"
      domain_prefix       = ""
    }
  }

  current_env = local.env_config[local.environment]
}
