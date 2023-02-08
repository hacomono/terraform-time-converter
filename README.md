# terraform-time-converter

このリポジトリは時間とTimezoneを指定して実行すると望んだTimezoneで様々な形式で返してくれるModuleです。

## 実行環境
- terraform-docs
  - version v0.16.0 1f686b1 darwin/amd64
- go
  - go1.17.5 darwin/amd64
- pre-commit
  - pre-commit 2.16.0

## 環境構築

```
$ pre-commit install
$ yarn install
$ yarn husky init
$ yarn husky install
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Usage:

```
module "time_converter" {
  source = "git@github.com:hacomono/terraform-time-converter.git"

  timezone = "Asia/Tokyo"
  datetime = "2022-11-22 12:00:00"
}

output "time_converter" {
  value = module.time_converter
}
```
outputs:
```
time_converter = {
  "cron" = "0 3 22 11 *"
  "cron_event_bridge" = "0 3 22 11 ? 2022"
  "cron_year" = "0 3 22 11 * 2022"
  "iso8601" = "2022-11-22T03:00:00+09:00"
  "no_symbol" = "20221122120000"
  "rfc1123" = "Tue, 22 Nov 2022 03:00:00 UTC"
  "rfc2822" = "22 Nov 2022 03:00 UTC"
  "rfc3339" = "2022-11-22T03:00:00Z"
  "rfc850" = "22 Nov 2022 03:00 UTC"
  "unix" = 1669086000
} *
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [time_static.static](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/static) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datetime"></a> [datetime](#input\_datetime) | n/a | `string` | n/a | yes |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | n/a | `string` | `"UTC"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cron"></a> [cron](#output\_cron) | n/a |
| <a name="output_cron_event_bridge"></a> [cron\_event\_bridge](#output\_cron\_event\_bridge) | n/a |
| <a name="output_cron_year"></a> [cron\_year](#output\_cron\_year) | n/a |
| <a name="output_iso8601"></a> [iso8601](#output\_iso8601) | n/a |
| <a name="output_no_symbol"></a> [no\_symbol](#output\_no\_symbol) | n/a |
| <a name="output_rfc1123"></a> [rfc1123](#output\_rfc1123) | n/a |
| <a name="output_rfc2822"></a> [rfc2822](#output\_rfc2822) | n/a |
| <a name="output_rfc3339"></a> [rfc3339](#output\_rfc3339) | n/a |
| <a name="output_rfc850"></a> [rfc850](#output\_rfc850) | n/a |
| <a name="output_unix"></a> [unix](#output\_unix) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
