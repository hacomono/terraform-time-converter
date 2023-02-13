output "iso8601" {
  value       = local.iso8601
  description = "example: 2022-11-22T12:00:00+09:00"
}

output "rfc850" {
  value       = local.rfc850
  description = "example: 22 Nov 2022 12:00 +0900"
}

output "rfc2822" {
  value       = local.rfc2822
  description = "example: 22 Nov 2022 12:00 +0900"
}

output "rfc1123" {
  value       = local.rfc1123
  description = "example: Tue, 22 Nov 2022 12:00:00 +0900"
}

output "rfc3339" {
  value       = local.rfc3339
  description = "example: 2022-11-22T12:00:00+09:00"
}

output "cron_year" {
  value       = local.cron_year
  description = "example: 0 12 22 11 * 2022"
}

output "cron_event_bridge" {
  value       = local.cron_event_bridge
  description = "example: 0 12 22 11 ? 2022"
}

output "cron" {
  value       = local.cron
  description = "example: 0 12 22 11 *"
}

output "unix" {
  value       = local.unix
  description = "example: 1669086000"
}

output "no_symbol" {
  value       = local.no_symbol
  description = "example: 20221122120000"
}

output "utc_iso8601" {
  value       = local.utc_iso8601
  description = "example: 2022-11-22T03:00:00Z"
}

output "utc_rfc850" {
  value       = local.utc_rfc850
  description = "example: 22 Nov 2022 03:00 UTC"
}

output "utc_rfc2822" {
  value       = local.utc_rfc2822
  description = "example: 22 Nov 2022 03:00 UTC"
}

output "utc_rfc1123" {
  value       = local.utc_rfc1123
  description = "example: Tue, 22 Nov 2022 03:00:00 UTC"
}

output "utc_rfc3339" {
  value       = local.utc_rfc3339
  description = "example: 2022-11-22T03:00:00+00:00"
}

output "utc_cron_year" {
  value       = local.utc_cron_year
  description = "example: 0 3 22 11 * 2022"
}

output "utc_cron_event_bridge" {
  value       = local.utc_cron_event_bridge
  description = "example: 0 3 22 11 ? 2022"
}

output "utc_cron" {
  value       = local.utc_cron
  description = "example: 0 3 22 11 *"
}

output "utc_no_symbol" {
  value       = local.utc_no_symbol
  description = "example: 20221122030000"
}
