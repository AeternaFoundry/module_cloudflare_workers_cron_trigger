variable "workers_cron_triggers" {
  description = <<EOT
Map of workers_cron_triggers, attributes below
Required:
    - account_id
    - schedules
    - script_name
EOT

  type = map(object({
    account_id = string
    schedules = list(object({
      cron = string
    }))
    script_name = string
  }))
}

