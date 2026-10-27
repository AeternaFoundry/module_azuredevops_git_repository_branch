output "git_repository_branches_id" {
  description = "Map of id values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.id }
}
output "git_repository_branches_last_commit_id" {
  description = "Map of last_commit_id values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.last_commit_id }
}
output "git_repository_branches_name" {
  description = "Map of name values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.name }
}
output "git_repository_branches_ref_branch" {
  description = "Map of ref_branch values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.ref_branch }
}
output "git_repository_branches_ref_commit_id" {
  description = "Map of ref_commit_id values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.ref_commit_id }
}
output "git_repository_branches_ref_tag" {
  description = "Map of ref_tag values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.ref_tag }
}
output "git_repository_branches_repository_id" {
  description = "Map of repository_id values across all git_repository_branches, keyed the same as var.git_repository_branches"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.repository_id }
}

