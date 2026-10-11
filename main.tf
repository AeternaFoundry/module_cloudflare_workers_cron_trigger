resource "cloudflare_workers_cron_trigger" "workers_cron_triggers" {
  for_each = var.workers_cron_triggers

  account_id  = each.value.account_id
  schedules   = each.value.schedules
  script_name = each.value.script_name
}

