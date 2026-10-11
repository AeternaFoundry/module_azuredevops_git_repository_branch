resource "azuredevops_git_repository_branch" "git_repository_branches" {
  for_each = var.git_repository_branches

  name          = each.value.name
  repository_id = each.value.repository_id
  ref_branch    = each.value.ref_branch
  ref_commit_id = each.value.ref_commit_id
  ref_tag       = each.value.ref_tag

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

