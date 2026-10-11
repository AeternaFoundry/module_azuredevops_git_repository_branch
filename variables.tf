variable "git_repository_branches" {
  description = <<EOT
Map of git_repository_branches, attributes below
Required:
    - name
    - repository_id
Optional:
    - ref_branch
    - ref_commit_id
    - ref_tag
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    name          = string
    repository_id = string
    ref_branch    = optional(string)
    ref_commit_id = optional(string)
    ref_tag       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.git_repository_branches : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.repository_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_branches : (
        v.ref_branch == null || (length(v.ref_branch) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_branches : (
        v.ref_tag == null || (length(v.ref_tag) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_branches : (
        v.ref_commit_id == null || (length(v.ref_commit_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

