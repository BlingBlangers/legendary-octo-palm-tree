# Terraform Infrastructure

This directory contains Terraform configuration for managing infrastructure across dev, preview, and
production environments.

## Prerequisites

- Terraform CLI >= 1.5.0
- Terraform Cloud account with access to organization `CJRb8k`
- API tokens for Vercel and DigitalOcean

## Workspace Structure

Workspaces are tagged with `legendary-octo-palm-tree` and follow the naming convention:

- `legendary-octo-palm-tree-dev`
- `legendary-octo-palm-tree-preview`
- `legendary-octo-palm-tree-production`

## Required Variables

### Provider Authentication (Set in ALL workspaces)

| Variable             | Type                             | Description            |
| -------------------- | -------------------------------- | ---------------------- |
| `VERCEL_API_TOKEN`   | Environment Variable (Sensitive) | Vercel API token       |
| `DIGITALOCEAN_TOKEN` | Environment Variable (Sensitive) | DigitalOcean API token |

### Observability Variables

Configure these in Terraform Cloud workspace variables:

| Variable          | Type               | Sensitive | Description                                              |
| ----------------- | ------------------ | --------- | -------------------------------------------------------- |
| `sentry_dsn`      | Terraform Variable | Yes       | Sentry DSN for error tracking                            |
| `axiom_api_token` | Terraform Variable | Yes       | Axiom API token for logging                              |
| `axiom_dataset`   | Terraform Variable | No        | Axiom dataset name (default: `legendary-octo-palm-tree`) |
| `matomo_url`      | Terraform Variable | No        | Matomo instance URL                                      |
| `matomo_site_id`  | Terraform Variable | No        | Matomo site ID                                           |

## Setting Up Terraform Cloud Variables

### Via Terraform Cloud UI

1. Navigate to Organization `CJRb8k`
2. Select the project `legendary-octo-palm-tree`
3. Choose the workspace (dev/preview/production)
4. Go to Variables tab
5. Add each variable with appropriate sensitivity settings

### Observability Service Setup

#### Sentry (Error Tracking)

1. Create project at [sentry.io](https://sentry.io)
2. Copy DSN from Project Settings > Client Keys
3. Add `sentry_dsn` as sensitive Terraform variable

#### Axiom (Logging)

1. Create dataset at [axiom.co](https://axiom.co)
2. Generate API token with ingest permissions
3. Add `axiom_api_token` as sensitive Terraform variable
4. Set `axiom_dataset` to your dataset name

#### Matomo (Analytics)

1. Create site in your Matomo instance
2. Copy site ID from Settings > Websites > Manage
3. Add `matomo_url` (e.g., `https://analytics.example.com`)
4. Add `matomo_site_id` (numeric ID)

## Deployment Order

Always deploy in order: `dev` -> `preview` -> `production`

```bash
# Select workspace and apply
terraform workspace select legendary-octo-palm-tree-dev
terraform plan
terraform apply

# Repeat for preview, then production
```

## Outputs

After applying, the following outputs are available:

- `environment`: Current deployment environment
- `vercel_project_name`: Vercel project name for this environment
