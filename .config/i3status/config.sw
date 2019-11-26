general {
        output_format = "i3bar"
        colors = false
        markup = pango
        interval = 5
        color_good = '#2f343f'
		color_degraded = '#ebcb8b'
		color_bad = '#ba5e57'
}
order += "load"
#order += "cpu_temperature 0"
#order += "disk /"
order += "disk /home"
#order += "ethernet enp2s0"
order += "wireless wlp1s0"
order += "volume master"
#order += "battery 1"
order += "tztime local"
load {
        format = "<span background='#f59335'>  %5min Load </span>"
}

cpu_temperature 0 {
        format = "<span background='#bf616a'>  %degrees °C </span>"
        path = "/sys/class/thermal/thermal_zone0/temp"
}

disk "/" {
        format = "<span background='#fec7cd'>  %free Free </span>"
}

disk "/home" {
        format = "<span background='#a1d569'>  %free Free </span>"
}

ethernet enp1s0 {
        format_up = "<span background='#88c0d0'>  %ip </span>"
        format_down = "<span background='#88c0d0'>  Disconnected </span>"
}

wireless wlp1s0 {
        format_up = "<span background='#b48ead'>  %essid </span>"
        format_down = "<span background='#b48ead'>  Disconnected </span>"
}

volume master {
        format = "<span background='#ebcb8b'>  %volume </span>"
        format_muted = "<span background='#ebcb8b'>Muted </span>"
        device = "default"
        mixer = "Master"
        mixer_idx = 0
}
battery 1 {
 format = "<span background='#a3be8c'>  %status  %percentage </span>"
        format_down = "No Battery"
        status_chr = "Charging"
        status_bat = "Battery"
        status_unk = "Unknown"
        status_full = "Charged"
        path = "/sys/class/power_supply/BATT/uevent"
        low_threshold = "30"
		threshold_type = "time"
		last_full_capacity = true
		integer_battery_capacity = true
}
tztime local {
		format = "<span background='#81a1c1'> %time </span>"
		format_time = " %a %-d %b %H:%M"
}

