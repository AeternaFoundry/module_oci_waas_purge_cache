variable "waas_purge_caches" {
  description = <<EOT
Map of waas_purge_caches, attributes below
Required:
    - waas_policy_id
Optional:
    - resources
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    waas_policy_id = string
    resources      = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

