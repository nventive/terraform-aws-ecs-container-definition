locals {
  environment = concat(var.environment, var.environment_extra)
  secrets     = concat(var.secrets, var.secrets_extra)
}

module "container_definition" {
  source  = "cloudposse/ecs-container-definition/aws"
  version = "0.58.2"

  container_name               = var.container_name
  container_image              = var.container_image
  container_memory             = var.container_memory
  container_memory_reservation = var.container_memory_reservation
  container_definition         = var.container_definition
  port_mappings                = var.port_mappings
  healthcheck                  = var.healthcheck
  container_cpu                = var.container_cpu
  essential                    = var.essential
  entrypoint                   = var.entrypoint
  command                      = var.command
  working_directory            = var.working_directory
  environment                  = local.environment
  extra_hosts                  = var.extra_hosts
  map_environment              = var.map_environment
  map_secrets                  = var.map_secrets
  environment_files            = var.environment_files
  secrets                      = local.secrets
  readonly_root_filesystem     = var.readonly_root_filesystem
  linux_parameters             = var.linux_parameters
  log_configuration            = var.log_configuration
  firelens_configuration       = var.firelens_configuration
  mount_points                 = var.mount_points
  dns_servers                  = var.dns_servers
  dns_search_domains           = var.dns_search_domains
  ulimits                      = var.ulimits
  repository_credentials       = var.repository_credentials
  volumes_from                 = var.volumes_from
  links                        = var.links
  user                         = var.user
  container_depends_on         = var.container_depends_on
  docker_labels                = var.docker_labels
  start_timeout                = var.start_timeout
  stop_timeout                 = var.stop_timeout
  privileged                   = var.privileged
  system_controls              = var.system_controls
  hostname                     = var.hostname
  disable_networking           = var.disable_networking
  interactive                  = var.interactive
  pseudo_terminal              = var.pseudo_terminal
  docker_security_options      = var.docker_security_options
  resource_requirements        = var.resource_requirements
}
