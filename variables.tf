variable "datastream_private_connections" {
  description = <<EOT
Map of datastream_private_connections, attributes below
Required:
    - display_name
    - location
    - private_connection_id
Optional:
    - create_without_validation
    - deletion_policy
    - labels
    - project
    - psc_interface_config (block):
        - network_attachment (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vpc_peering_config (block):
        - subnet (required)
        - vpc (required)
EOT

  type = map(object({
    display_name              = string
    location                  = string
    private_connection_id     = string
    create_without_validation = optional(bool)
    deletion_policy           = optional(string)
    labels                    = optional(map(string))
    project                   = optional(string)
    psc_interface_config = optional(object({
      network_attachment = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vpc_peering_config = optional(object({
      subnet = string
      vpc    = string
    }))
  }))
}

