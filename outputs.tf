output "github-org-ssh-url" {
  value = github_repository.github-org.ssh_clone_url
}
output "repotpl-terraform-ssh-url" {
  value = github_repository.repotpl-terraform.ssh_clone_url
}
output "kubernetes-standard-services-ssh-url" {
  value = github_repository.kubernetes-standard-services.ssh_clone_url
}
output "kubernetes-hosts-ssh-url" {
  value = github_repository.kubernetes-hosts.ssh_clone_url
}
output "azure-pipeline-templates-ssh-url" {
  value = github_repository.azure-pipeline-templates.ssh_clone_url
}
output "azure-devops-org-ssh-url" {
  value = github_repository.azure-devops-org.ssh_clone_url
}
