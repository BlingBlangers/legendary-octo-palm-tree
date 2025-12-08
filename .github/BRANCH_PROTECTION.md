# Branch Protection Rules

This document describes the required branch protection configuration for the `main` branch.

## Required Settings

Navigate to **Settings > Branches > Add branch protection rule** for the `main` branch.

### Branch name pattern

```text
main
```

### Protection Rules

#### Protect matching branches

- [x] **Require a pull request before merging**
  - [x] Require approvals: `1`
  - [x] Dismiss stale pull request approvals when new commits are pushed
  - [x] Require review from Code Owners (optional)

- [x] **Require status checks to pass before merging**
  - [x] Require branches to be up to date before merging
  - Required status checks:
    - `Lint & Type Check`
    - `Unit Tests`
    - `E2E Tests`
    - `Security Scan`
    - `Validate` (Terraform)

- [x] **Require conversation resolution before merging**

- [x] **Require signed commits** (optional, recommended)

- [x] **Require linear history**
  - Enforces squash merging or rebasing

- [ ] **Do not allow bypassing the above settings**
  - Enable only if you want no exceptions, even for admins

#### Rules applied to everyone including administrators

- [x] **Restrict who can push to matching branches**
  - Only allow merges via PR (no direct pushes)

### Enforcement

- [x] **Lock branch** (optional)
  - Prevents any changes except through the web interface

## GitHub CLI Setup (Alternative)

You can also configure branch protection via CLI:

```bash
gh api repos/{owner}/{repo}/branches/main/protection \
  --method PUT \
  --field required_status_checks='{"strict":true,"contexts":["Lint & Type Check","Unit Tests","E2E Tests","Security Scan","Validate"]}' \
  --field enforce_admins=false \
  --field required_pull_request_reviews='{"dismiss_stale_reviews":true,"require_code_owner_reviews":false,"required_approving_review_count":1}' \
  --field restrictions=null \
  --field required_linear_history=true \
  --field allow_force_pushes=false \
  --field allow_deletions=false
```

## Secrets Required

The following secrets must be configured in **Settings > Secrets and variables > Actions**:

| Secret          | Description               | Required By   |
| --------------- | ------------------------- | ------------- |
| `TF_API_TOKEN`  | Terraform Cloud API token | terraform.yml |
| `CODECOV_TOKEN` | Codecov upload token      | test.yml      |

## Notes

- Branch protection ensures all changes go through PR review
- Status checks must pass before merging
- Linear history enforces squash merges (per project conventions)
- Terraform validation runs only when terraform/ files change
