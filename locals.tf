locals {
  now = timestamp()

  time = timeadd("${replace(var.datetime, " ", "T")}Z", "${local.timezones[var.timezone].diff}h")

  iso8601           = formatdate("YYYY-MM-DD'T'hh:mm:ss${local.timezones[var.timezone].iso8601_ZZZZZ}", local.time)
  rfc850            = formatdate("DD MMM YYYY hh:mm ZZZ", local.time)
  rfc2822           = formatdate("DD MMM YYYY hh:mm ZZZ", local.time)
  rfc1123           = formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", local.time)
  rfc3339           = formatdate("YYYY-MM-DD'T'hh:mm:ssZ", local.time)
  cron_year         = formatdate("m h D M * YYYY", local.time)
  cron_event_bridge = formatdate("m h D M ? YYYY", local.time)
  cron              = formatdate("m h D M *", local.time)
  unix              = time_static.static.unix

  timezones = {
    "Africa/Johannesburg" = {
      diff          = "+2"
      iso8601_ZZZZZ = "+02:00"
    }

    "Africa/Lagos" = {
      diff          = "+1"
      iso8601_ZZZZZ = "+01:00"
    }

    "Africa/Windhoek" = {
      diff          = "+1"
      iso8601_ZZZZZ = "+01:00"
    }

    "America/Adak" = {
      diff          = "-10"
      iso8601_ZZZZZ = "-10:00"
    }

    "America/Anchorage" = {
      diff          = "-9"
      iso8601_ZZZZZ = "-09:00"
    }

    "America/Argentina/Buenos_Aires" = {
      diff          = "-3"
      iso8601_ZZZZZ = "-03:00"
    }

    "America/Bogota" = {
      diff          = "-5"
      iso8601_ZZZZZ = "-05:00"
    }

    "America/Caracas" = {
      diff          = "-4.5"
      iso8601_ZZZZZ = "-04:30"
    }

    "America/Chicago" = {
      diff          = "-6"
      iso8601_ZZZZZ = "-06:00"
    }

    "America/Denver" = {
      diff          = "-7"
      iso8601_ZZZZZ = "-07:00"
    }

    "America/Godthab" = {
      diff          = "-3"
      iso8601_ZZZZZ = "-03:00"
    }

    "America/Guatemala" = {
      diff          = "-6"
      iso8601_ZZZZZ = "-06:00"
    }

    "America/Halifax" = {
      diff          = "-4"
      iso8601_ZZZZZ = "-04:00"
    }

    "America/Los_Angeles" = {
      diff          = "-8"
      iso8601_ZZZZZ = "-08:00"
    }

    "America/Montevideo" = {
      diff          = "-3"
      iso8601_ZZZZZ = "-03:00"
    }

    "America/New_York" = {
      diff          = "-5"
      iso8601_ZZZZZ = "-05:00"
    }

    "America/Noronha" = {
      diff          = "-2"
      iso8601_ZZZZZ = "-02:00"
    }

    "America/Phoenix" = {
      diff          = "-7"
      iso8601_ZZZZZ = "-07:00"
    }

    "America/Santiago" = {
      diff          = "-4"
      iso8601_ZZZZZ = "-04:00"
    }

    "America/Santo_Domingo" = {
      diff          = "-4"
      iso8601_ZZZZZ = "-04:00"
    }

    "America/St_Johns" = {
      diff          = "-3.5"
      iso8601_ZZZZZ = "-03:30"
    }

    "Asia/Baghdad" = {
      diff          = "+3"
      iso8601_ZZZZZ = "+03:00"
    }

    "Asia/Baku" = {
      diff          = "+4"
      iso8601_ZZZZZ = "+04:00"
    }

    "Asia/Beirut" = {
      diff          = "+2"
      iso8601_ZZZZZ = "+02:00"
    }

    "Asia/Dhaka" = {
      diff          = "+6"
      iso8601_ZZZZZ = "+06:00"
    }

    "Asia/Dubai" = {
      diff          = "+4"
      iso8601_ZZZZZ = "+04:00"
    }

    "Asia/Irkutsk" = {
      diff          = "+9"
      iso8601_ZZZZZ = "+09:00"
    }

    "Asia/Jakarta" = {
      diff          = "+7"
      iso8601_ZZZZZ = "+07:00"
    }

    "Asia/Kabul" = {
      diff          = "+4.5"
      iso8601_ZZZZZ = "+04:30"
    }

    "Asia/Kamchatka" = {
      diff          = "+2"
      iso8601_ZZZZZ = "+02:00"
    }

    "Asia/Karachi" = {
      diff          = "+5"
      iso8601_ZZZZZ = "+05:00"
    }

    "Asia/Kathmandu" = {
      diff          = "+5.75"
      iso8601_ZZZZZ = "+05:45"
    }

    "Asia/Kolkata" = {
      diff          = "+5.5"
      iso8601_ZZZZZ = "+05:30"
    }

    "Asia/Krasnoyarsk" = {
      diff          = "+8"
      iso8601_ZZZZZ = "+08:00"
    }

    "Asia/Omsk" = {
      diff          = "+7"
      iso8601_ZZZZZ = "+07:00"
    }

    "Asia/Rangoon" = {
      diff          = "+6.5"
      iso8601_ZZZZZ = "+06:30"
    }

    "Asia/Shanghai" = {
      diff          = "+8"
      iso8601_ZZZZZ = "+08:00"
    }

    "Asia/Tehran" = {
      diff          = "+3.5"
      iso8601_ZZZZZ = "+03:30"
    }

    "Asia/Tokyo" = {
      diff          = "+9"
      iso8601_ZZZZZ = "+09:00"
    }

    "Asia/Vladivostok" = {
      diff          = "+1"
      iso8601_ZZZZZ = "+01:00"
    }

    "Asia/Yakutsk" = {
      diff          = "+0"
      iso8601_ZZZZZ = "Z"
    }

    "Asia/Yekaterinburg" = {
      diff          = "+6"
      iso8601_ZZZZZ = "+06:00"
    }

    "Atlantic/Azores" = {
      diff          = "-1"
      iso8601_ZZZZZ = "-01:00"
    }

    "Atlantic/Cape_Verde" = {
      diff          = "-1"
      iso8601_ZZZZZ = "-01:00"
    }

    "Australia/Adelaide" = {
      diff          = "+9.5"
      iso8601_ZZZZZ = "+09:30"
    }

    "Australia/Brisbane" = {
      diff          = "+0"
      iso8601_ZZZZZ = "Z"
    }

    "Australia/Darwin" = {
      diff          = "+9.5"
      iso8601_ZZZZZ = "+09:30"
    }

    "Australia/Eucla" = {
      diff          = "+8.75"
      iso8601_ZZZZZ = "+08:45"
    }

    "Australia/Lord_Howe" = {
      diff          = "+0.5"
      iso8601_ZZZZZ = "+0:30"
    }

    "Australia/Sydney" = {
      diff          = "+0"
      iso8601_ZZZZZ = "Z"
    }

    "Etc/GMT+12" = {
      diff          = "-12"
      iso8601_ZZZZZ = "-12:00"
    }

    "Europe/Berlin" = {
      diff          = "+1"
      iso8601_ZZZZZ = "+01:00"
    }

    "Europe/London" = {
      diff          = "0"
      iso8601_ZZZZZ = "00:00"
    }

    "Europe/Moscow" = {
      diff          = "+4"
      iso8601_ZZZZZ = "+04:00"
    }

    "Pacific/Apia" = {
      diff          = "+3"
      iso8601_ZZZZZ = "+03:00"
    }

    "Pacific/Auckland" = {
      diff          = "+2"
      iso8601_ZZZZZ = "+02:00"
    }

    "Pacific/Chatham" = {
      diff          = "+2.75"
      iso8601_ZZZZZ = "+02:45"
    }

    "Pacific/Easter" = {
      diff          = "-6"
      iso8601_ZZZZZ = "-06:00"
    }

    "Pacific/Gambier" = {
      diff          = "-9"
      iso8601_ZZZZZ = "-09:00"
    }

    "Pacific/Honolulu" = {
      diff          = "-10"
      iso8601_ZZZZZ = "-10:00"
    }

    "Pacific/Kiritimati" = {
      diff          = "+4"
      iso8601_ZZZZZ = "+04:00"
    }

    "Pacific/Majuro" = {
      diff          = "+2"
      iso8601_ZZZZZ = "+02:00"
    }

    "Pacific/Marquesas" = {
      diff          = "-9.5"
      iso8601_ZZZZZ = "-09:30"
    }

    "Pacific/Norfolk" = {
      diff          = "+1.5"
      iso8601_ZZZZZ = "+01:30"
    }

    "Pacific/Noumea" = {
      diff          = "+1"
      iso8601_ZZZZZ = "+01:00"
    }

    "Pacific/Pago_Pago" = {
      diff          = "-11"
      iso8601_ZZZZZ = "-11:00"
    }

    "Pacific/Pitcairn" = {
      diff          = "-8"
      iso8601_ZZZZZ = "-08:00"
    }

    "Pacific/Tongatapu" = {
      diff          = "+3"
      iso8601_ZZZZZ = "+03:00"
    }

    "UTC" = {
      diff          = "0"
      iso8601_ZZZZZ = "Z"
    }
  }
}
