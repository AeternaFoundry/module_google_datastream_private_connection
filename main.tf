resource "google_datastream_private_connection" "datastream_private_connections" {
  for_each = var.datastream_private_connections

  display_name              = each.value.display_name
  location                  = each.value.location
  private_connection_id     = each.value.private_connection_id
  create_without_validation = each.value.create_without_validation
  deletion_policy           = each.value.deletion_policy
  labels                    = each.value.labels
  project                   = each.value.project

  dynamic "psc_interface_config" {
    for_each = each.value.psc_interface_config != null ? [each.value.psc_interface_config] : []
    content {
      network_attachment = psc_interface_config.value.network_attachment
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vpc_peering_config" {
    for_each = each.value.vpc_peering_config != null ? [each.value.vpc_peering_config] : []
    content {
      subnet = vpc_peering_config.value.subnet
      vpc    = vpc_peering_config.value.vpc
    }
  }
}

