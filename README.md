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
  "time" = {
    "cron" = "0 21 22 11 *"
    "cron_year" = "0 21 22 11 * 2022"
    "iso8601" = "2022-11-22T21:00:00+09:00"
    "rfc1123" = "Tue, 22 Nov 2022 21:00:00 UTC"
    "rfc2822" = "22 Nov 2022 21:00 UTC"
    "rfc3339" = "2022-11-22T21:00:00Z"
    "rfc850" = "22 Nov 2022 21:00 UTC"
    "time" = "2022-11-22T21:00:00Z"
    "unix" = 1669150800
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_time"></a> [time](#provider\_time) | 0.7.2 |

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
| <a name="output_time"></a> [time](#output\_time) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
