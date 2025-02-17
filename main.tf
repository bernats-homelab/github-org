resource "github_organization_settings" "bernats-homelab" {
  name          = "Bernats Homelab"
  description   = "Bernardo and Natalia's Homelab Projects"
  location      = "Santa Catarina, Brasil"
  blog          = "https://captaindevops.substack.com/"
  billing_email = var.github_organization_owner_email

  has_organization_projects                                    = true
  has_repository_projects                                      = true
  default_repository_permission                                = "write"
  members_can_create_repositories                              = true
  members_can_create_public_repositories                       = true
  members_can_create_private_repositories                      = true
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = true
  members_can_create_public_pages                              = true
  members_can_create_private_pages                             = true
  members_can_fork_private_repositories                        = true
  web_commit_signoff_required                                  = false
  advanced_security_enabled_for_new_repositories               = false
  dependabot_alerts_enabled_for_new_repositories               = true
  dependabot_security_updates_enabled_for_new_repositories     = true
  dependency_graph_enabled_for_new_repositories                = true
  secret_scanning_enabled_for_new_repositories                 = true
  secret_scanning_push_protection_enabled_for_new_repositories = true
}

resource "github_membership" "natalia" {
  username = "natalia-coelho"
}

resource "github_repository" "github-org" {
  name        = "github-org"
  description = "Terraform configuration files for the bernats-homelab organization in GitHub"

  visibility = "public"
}

resource "github_repository" "azure-devops-org" {
  name        = "azure-devops-org"
  description = "Terraform configuration files for the Bernats organization in Azure DevOps"

  visibility = "public"
}

resource "github_repository" "azure-pipeline-templates" {
  name        = "azure-pipeline-templates"
  description = "Azure Pipelines templates for the Bernats organization"

  visibility = "public"
}

resource "github_repository" "kubernetes-standard-services" {
  name        = "kubernetes-standard-services"
  description = "Collection of default services installed in our Kubernetes clusters. Managed by ArgoCD."

  visibility = "public"
}

resource "github_repository" "kubernetes-hosts" {
  name        = "kubernetes-hosts"
  description = "Configuration files to manage kubernetes hosts"

  visibility = "public"
}

resource "github_repository" "repotpl-terraform" {
  name        = "repotpl-terraform"
  description = "Repository template for terraform projects"

  visibility  = "public"
  is_template = true
}
