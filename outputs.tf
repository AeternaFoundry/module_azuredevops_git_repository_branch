output "git_repository_branches_id" {
  description = "Map of id values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no id are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_repository_branches_last_commit_id" {
  description = "Map of last_commit_id values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no last_commit_id are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.last_commit_id if v.last_commit_id != null && length(v.last_commit_id) > 0 }
}
output "git_repository_branches_name" {
  description = "Map of name values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no name are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.name if v.name != null && length(v.name) > 0 }
}
output "git_repository_branches_ref_branch" {
  description = "Map of ref_branch values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no ref_branch are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.ref_branch if v.ref_branch != null && length(v.ref_branch) > 0 }
}
output "git_repository_branches_ref_commit_id" {
  description = "Map of ref_commit_id values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no ref_commit_id are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.ref_commit_id if v.ref_commit_id != null && length(v.ref_commit_id) > 0 }
}
output "git_repository_branches_ref_tag" {
  description = "Map of ref_tag values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no ref_tag are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.ref_tag if v.ref_tag != null && length(v.ref_tag) > 0 }
}
output "git_repository_branches_repository_id" {
  description = "Map of repository_id values across all git_repository_branches, keyed the same as var.git_repository_branches except keys with no repository_id are omitted"
  value       = { for k, v in azuredevops_git_repository_branch.git_repository_branches : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

