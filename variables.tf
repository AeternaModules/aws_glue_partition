variable "glue_partitions" {
  description = <<EOT
Map of glue_partitions, attributes below
Required:
    - database_name
    - partition_values
    - table_name
Optional:
    - catalog_id
    - parameters
    - region
    - storage_descriptor (block):
        - additional_locations (optional)
        - bucket_columns (optional)
        - columns (optional, block):
            - comment (optional)
            - name (required)
            - type (optional)
        - compressed (optional)
        - input_format (optional)
        - location (optional)
        - number_of_buckets (optional)
        - output_format (optional)
        - parameters (optional)
        - ser_de_info (optional, block):
            - name (optional)
            - parameters (optional)
            - serialization_library (optional)
        - skewed_info (optional, block):
            - skewed_column_names (optional)
            - skewed_column_value_location_maps (optional)
            - skewed_column_values (optional)
        - sort_columns (optional, block):
            - column (required)
            - sort_order (required)
        - stored_as_sub_directories (optional)
EOT

  type = map(object({
    database_name    = string
    partition_values = list(string)
    table_name       = string
    catalog_id       = optional(string)
    parameters       = optional(map(string))
    region           = optional(string)
    storage_descriptor = optional(object({
      additional_locations = optional(list(string))
      bucket_columns       = optional(list(string))
      columns = optional(list(object({
        comment = optional(string)
        name    = string
        type    = optional(string)
      })))
      compressed        = optional(bool)
      input_format      = optional(string)
      location          = optional(string)
      number_of_buckets = optional(number)
      output_format     = optional(string)
      parameters        = optional(map(string))
      ser_de_info = optional(object({
        name                  = optional(string)
        parameters            = optional(map(string))
        serialization_library = optional(string)
      }))
      skewed_info = optional(object({
        skewed_column_names               = optional(list(string))
        skewed_column_value_location_maps = optional(map(string))
        skewed_column_values              = optional(list(string))
      }))
      sort_columns = optional(list(object({
        column     = string
        sort_order = number
      })))
      stored_as_sub_directories = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.glue_partitions : (
        alltrue([for x in v.partition_values : length(x) >= 1 && length(x) <= 1024])
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

