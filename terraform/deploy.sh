#!/bin/bash
set -e

# Terraform deployment script for Terraform Cloud
# Usage: ./deploy.sh <environment> [plan|apply|destroy]
# Environments: dev, preview, production
#
# Prerequisites:
# - Terraform Cloud workspaces must have tag "legendary-octo-palm-tree"
# - API tokens configured in Terraform Cloud workspace variables

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Validate arguments
if [ -z "$1" ]; then
    echo "Usage: $0 <environment> [plan|apply|destroy]"
    echo "Environments: dev, preview, production"
    exit 1
fi

ENVIRONMENT=$1
ACTION=${2:-plan}
WORKSPACE_NAME="legendary-octo-palm-tree-${ENVIRONMENT}"

# Validate environment
if [[ ! "$ENVIRONMENT" =~ ^(dev|preview|production)$ ]]; then
    echo "Error: Invalid environment '$ENVIRONMENT'"
    echo "Valid environments: dev, preview, production"
    exit 1
fi

# Validate action
if [[ ! "$ACTION" =~ ^(plan|apply|destroy)$ ]]; then
    echo "Error: Invalid action '$ACTION'"
    echo "Valid actions: plan, apply, destroy"
    exit 1
fi

# Production safeguard
if [ "$ENVIRONMENT" == "production" ] && [ "$ACTION" == "destroy" ]; then
    echo "WARNING: You are about to destroy PRODUCTION infrastructure!"
    read -p "Type 'yes-destroy-production' to confirm: " confirm
    if [ "$confirm" != "yes-destroy-production" ]; then
        echo "Aborted."
        exit 1
    fi
fi

# Enforce deployment order for apply
if [ "$ACTION" == "apply" ]; then
    case $ENVIRONMENT in
        preview)
            echo "Note: Ensure 'dev' environment is deployed and verified first."
            ;;
        production)
            echo "Note: Ensure 'preview' environment is deployed and verified first."
            ;;
    esac
fi

echo "========================================"
echo "Workspace: $WORKSPACE_NAME"
echo "Environment: $ENVIRONMENT"
echo "Action: $ACTION"
echo "========================================"

# Set workspace via environment variable for Terraform Cloud
export TF_WORKSPACE="$WORKSPACE_NAME"

# Initialize terraform
echo "Initializing Terraform..."
terraform init

# Run the action
case $ACTION in
    plan)
        echo "Running terraform plan..."
        terraform plan -var-file="environments/${ENVIRONMENT}.tfvars"
        ;;
    apply)
        echo "Running terraform apply..."
        terraform apply -var-file="environments/${ENVIRONMENT}.tfvars" -auto-approve
        ;;
    destroy)
        echo "Running terraform destroy..."
        terraform destroy -var-file="environments/${ENVIRONMENT}.tfvars" -auto-approve
        ;;
esac

echo "========================================"
echo "Deployment complete for $ENVIRONMENT"
echo "========================================"
