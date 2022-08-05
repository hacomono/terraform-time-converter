output "time" {
  value = {
    time              = local.time
    iso8601           = local.iso8601
    rfc850            = local.rfc850
    rfc2822           = local.rfc2822
    rfc1123           = local.rfc1123
    rfc3339           = local.rfc3339
    cron_year         = local.cron_year
    cron_event_bridge = local.cron_event_bridge
    cron              = local.cron
    unix              = local.unix
  }
}
