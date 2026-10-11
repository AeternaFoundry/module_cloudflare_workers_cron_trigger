output "workers_cron_triggers_id" {
  description = "Map of id values across all workers_cron_triggers, keyed the same as var.workers_cron_triggers except keys with no id are omitted"
  value       = { for k, v in cloudflare_workers_cron_trigger.workers_cron_triggers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workers_cron_triggers_account_id" {
  description = "Map of account_id values across all workers_cron_triggers, keyed the same as var.workers_cron_triggers except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_workers_cron_trigger.workers_cron_triggers : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "workers_cron_triggers_schedules" {
  description = "Map of schedules values across all workers_cron_triggers, keyed the same as var.workers_cron_triggers except keys with no schedules are omitted"
  value       = { for k, v in cloudflare_workers_cron_trigger.workers_cron_triggers : k => v.schedules if v.schedules != null && length(v.schedules) > 0 }
}
output "workers_cron_triggers_script_name" {
  description = "Map of script_name values across all workers_cron_triggers, keyed the same as var.workers_cron_triggers except keys with no script_name are omitted"
  value       = { for k, v in cloudflare_workers_cron_trigger.workers_cron_triggers : k => v.script_name if v.script_name != null && length(v.script_name) > 0 }
}

