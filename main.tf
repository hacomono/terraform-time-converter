/**
 * Usage:
 *
 * ```
 * module "time_converter" {
 *   source = "git@github.com:hacomono/terraform-time-converter.git"
 *
 *   timezone = "Asia/Tokyo"
 *   datetime = "2022-11-22 12:00:00"
 * }
 *
 * output "time_converter" {
 *   value = module.time_converter
 * }
 * ```
 * outputs:
 * ```
 * time_converter = {
 *   "cron" = "0 21 22 11 *"
 *   "cron_event_bridge" = "0 21 22 11 ? 2022"
 *   "cron_year" = "0 21 22 11 * 2022"
 *   "iso8601" = "2022-11-22T21:00:00+09:00"
 *   "rfc1123" = "Tue, 22 Nov 2022 21:00:00 UTC"
 *   "rfc2822" = "22 Nov 2022 21:00 UTC"
 *   "rfc3339" = "2022-11-22T21:00:00Z"
 *   "rfc850" = "22 Nov 2022 21:00 UTC"
 *   "unix" = 1669150800
 * }
 * ```
 */
