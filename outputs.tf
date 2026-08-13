output "glue_partitions_id" {
  description = "Map of id values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glue_partitions_catalog_id" {
  description = "Map of catalog_id values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "glue_partitions_creation_time" {
  description = "Map of creation_time values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "glue_partitions_database_name" {
  description = "Map of database_name values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "glue_partitions_last_accessed_time" {
  description = "Map of last_accessed_time values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.last_accessed_time if v.last_accessed_time != null && length(v.last_accessed_time) > 0 }
}
output "glue_partitions_last_analyzed_time" {
  description = "Map of last_analyzed_time values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.last_analyzed_time if v.last_analyzed_time != null && length(v.last_analyzed_time) > 0 }
}
output "glue_partitions_parameters" {
  description = "Map of parameters values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "glue_partitions_partition_values" {
  description = "Map of partition_values values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.partition_values if v.partition_values != null && length(v.partition_values) > 0 }
}
output "glue_partitions_region" {
  description = "Map of region values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "glue_partitions_storage_descriptor" {
  description = "Map of storage_descriptor values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.storage_descriptor if v.storage_descriptor != null && length(v.storage_descriptor) > 0 }
}
output "glue_partitions_table_name" {
  description = "Map of table_name values across all glue_partitions, keyed the same as var.glue_partitions"
  value       = { for k, v in aws_glue_partition.glue_partitions : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}

