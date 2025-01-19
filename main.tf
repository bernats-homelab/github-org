resource "github_membership" "natalia" {
  username = "natalia-coelho"
}

resource "github_repository" "github-org" {
  name        = "github-org"
  description = "Terraform configuration files for the bernats-homelab organization in GitHub"

  visibility = "public"
}
