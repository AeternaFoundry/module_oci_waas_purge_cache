output "waas_purge_caches_id" {
  description = "Map of id values across all waas_purge_caches, keyed the same as var.waas_purge_caches except keys with no id are omitted"
  value       = { for k, v in oci_waas_purge_cache.waas_purge_caches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waas_purge_caches_resources" {
  description = "Map of resources values across all waas_purge_caches, keyed the same as var.waas_purge_caches except keys with no resources are omitted"
  value       = { for k, v in oci_waas_purge_cache.waas_purge_caches : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "waas_purge_caches_waas_policy_id" {
  description = "Map of waas_policy_id values across all waas_purge_caches, keyed the same as var.waas_purge_caches except keys with no waas_policy_id are omitted"
  value       = { for k, v in oci_waas_purge_cache.waas_purge_caches : k => v.waas_policy_id if v.waas_policy_id != null && length(v.waas_policy_id) > 0 }
}

