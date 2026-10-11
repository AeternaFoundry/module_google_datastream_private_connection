output "datastream_private_connections_id" {
  description = "Map of id values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no id are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datastream_private_connections_create_without_validation" {
  description = "Map of create_without_validation values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no create_without_validation are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.create_without_validation if v.create_without_validation != null }
}
output "datastream_private_connections_deletion_policy" {
  description = "Map of deletion_policy values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no deletion_policy are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "datastream_private_connections_display_name" {
  description = "Map of display_name values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no display_name are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datastream_private_connections_effective_labels" {
  description = "Map of effective_labels values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no effective_labels are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "datastream_private_connections_error" {
  description = "Map of error values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no error are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.error if v.error != null && length(v.error) > 0 }
}
output "datastream_private_connections_labels" {
  description = "Map of labels values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no labels are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "datastream_private_connections_location" {
  description = "Map of location values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no location are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.location if v.location != null && length(v.location) > 0 }
}
output "datastream_private_connections_name" {
  description = "Map of name values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no name are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "datastream_private_connections_private_connection_id" {
  description = "Map of private_connection_id values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no private_connection_id are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.private_connection_id if v.private_connection_id != null && length(v.private_connection_id) > 0 }
}
output "datastream_private_connections_project" {
  description = "Map of project values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no project are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.project if v.project != null && length(v.project) > 0 }
}
output "datastream_private_connections_psc_interface_config" {
  description = "Map of psc_interface_config values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no psc_interface_config are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => one(v.psc_interface_config) if v.psc_interface_config != null && length(v.psc_interface_config) > 0 }
}
output "datastream_private_connections_state" {
  description = "Map of state values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no state are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datastream_private_connections_terraform_labels" {
  description = "Map of terraform_labels values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no terraform_labels are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "datastream_private_connections_vpc_peering_config" {
  description = "Map of vpc_peering_config values across all datastream_private_connections, keyed the same as var.datastream_private_connections except keys with no vpc_peering_config are omitted"
  value       = { for k, v in google_datastream_private_connection.datastream_private_connections : k => one(v.vpc_peering_config) if v.vpc_peering_config != null && length(v.vpc_peering_config) > 0 }
}

