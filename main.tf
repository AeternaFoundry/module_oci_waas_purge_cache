resource "oci_waas_purge_cache" "waas_purge_caches" {
  for_each = var.waas_purge_caches

  waas_policy_id = each.value.waas_policy_id
  resources      = each.value.resources

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

