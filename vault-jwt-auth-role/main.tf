resource "vault_jwt_auth_backend_role" "tfc_aws_secret_role" {
  backend = vault_jwt_auth_backend.tfc_jwt.path
  role_name = var.tfc_aws_secret_role_name
  token_policies = [vault_policy.tfc_dpc_aws_secret_policy.name]
  bound_audiences = [var.tfc_vault_audience]
  bound_claims_type = "glob"
  bound_claims = {
    sub = "organization:${var.tfc_organization_name}:project:${var.tfc_project_name}:workspace:${var.tfc_workspace_name}:run_phase:*"
  }
  user_claim = "terraform_full_workspace"
  role_type  = "jwt"
  token_ttl  = 1200
}