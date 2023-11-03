output "json_map_encoded_list" {
  value       = module.container_definition.json_map_encoded_list
  description = "JSON string encoded list of container definitions for use with other terraform resources such as aws_ecs_task_definition."
}

output "json_map_encoded" {
  value       = module.container_definition.json_map_encoded
  description = "JSON string encoded container definitions for use with other terraform resources such as aws_ecs_task_definition."
}

output "json_map_object" {
  value       = module.container_definition.json_map_object
  description = "JSON map encoded container definition."
}

output "sensitive_json_map_encoded_list" {
  value       = module.container_definition.sensitive_json_map_encoded_list
  sensitive   = true
  description = "JSON string encoded list of container definitions for use with other terraform resources such as aws_ecs_task_definition (sensitive)."
}

output "sensitive_json_map_encoded" {
  value       = module.container_definition.sensitive_json_map_encoded
  sensitive   = true
  description = "JSON string encoded container definitions for use with other terraform resources such as aws_ecs_task_definition (sensitive)."
}

output "sensitive_json_map_object" {
  value       = module.container_definition.sensitive_json_map_object
  sensitive   = true
  description = "JSON map encoded container definition (sensitive)."
}
