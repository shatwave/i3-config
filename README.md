## Preview
<div align="center">
    <img src="/preview/preview-clean.png"</img> 
</div> <br />
**Clean**, without any opened app. Only i3status is visible <br /><br />
<div align="center">
    <img src="/preview/preview-rofi.png"</img> 
</div>
**Rofi**, for launching apps <br /><br />
<div align="center">
    <img src="/preview/preview-splitscreen.png"</img> 
</div>
**Splitscreen**, Vim on the left , Ncmpcpp on the top right , Cava on the buttom right </br><br />
<div align="center">
    <img src="/preview/preview-floating.png"</img> 
</div>
**Floating**, for show-off. <br /><br />
<div align="center">
    <img src="/preview/start-page.png"</img> 
</div>
**Start Page**, start-page on Firefox <br />



## Details
- **Desktop Environment :** None
- **Graphical Server :** Xorg Minimal
- **Touchpad Driver :** Synaptics
- **Display Manager :** autox
- **Window Manager** : I3
- **Panel :** I3-status
- **Wallpaper Handler :** hsetroot
- **Program Launcher** : Rofi
- **Settings Daemon** : xsettingsd
- **File Manager :** Thunar
- **Image Viewer :** Viewnior
- **Screenshooter :** scrot
- **Web Browser :** Firefox
- **Terminal :** URxvt , Termite
- **Terminal Font :** Iosevka
- **CLI Text Editor :** Vim
- **GUI Text Editor :** Geany
- **CLI Music Player :** ncmpcpp
- **GUI Music Player :** Audacious
- **Multimedia Player :** Mpv
- **Encoder/Decoder :** ffmpeg
- **PDF Reader :** Evince
- **Archive Manager :** File Roller
- **IRC Client :** weechat
- **GTK Engine :** Murrine
- **GTK Theme :** Fantom
- **GTK Icons :** Audacious
- **GTK Cursors :** Breeze Snow
- **GTK Font :** Noto Sans
- **CLI Shell :** Zsh
- **Notification Daemon :** Dunst
- **Sound Mixer :** ALSA
- **Task Manager :** htop
- **Init :** runit
- **SystemD :** No
- **C Library :** GLibC


## Some Cheatsheet
My keybind is pretty weird, I'm more focus on easy to memorize <br />
- **Super + Shift + D** Launch dmenu
- **Super + D** Launch dmenu alternative called Rofi
- **Super + Enter** Launch i3-sensible-terminal, URxvt in this case
- **Super + Arrow** Change focused window, if You have two or more windows in the workspace
- **Super + Shift + Arrow** Send focused window to another edge of the screen, if You have two or more windows in the workspace
- **Super + H** and **Super + V** Change split direction to horizontal or vertical
- **Super + S** Change split direction, if You already have splitted windows
- **Super + Space** Float the window, hit it again to back to tiling mode
- **Super + 1-9** Switch to workspace 1-9
- **Super + Shift + 1-9** Send the focused window to workspace 1-9
- **Control + Alt + Left/Right** Switch to previous or next workspace. Only works if You have 2 workspace opened
- **Super + R** Resize mode. In resize mode, hit Arrow keys to do resizing. Hit Enter to back to normal mode
- **Super + C** Close window
- **Super + Q** Quit i3wm
- **Super + L** Lockscreen. To unlock, type your user password then hit Enter
- **Super + Shift + R** Fully reload the configuration file. Hit this after do some modifications in the config file
- More keybind look on the configuration file.
<br />

## launching apps
- **Super + Shift + W :** Firefox
- **Super + Shift + A :** Audacious
- **Super + Shift + F:** Thunra
- **Super + Shift + G :** Geany
 - **Super + Shift +T :** Telegram
 - **Super + Shift + C :** Calculator
 - **Super + Shift + M :** WebCame
 - **Super + Shift + V :** Vim
  - **Alt + R :** Gmrun
 - **Print :** Screenshot

  <br />
  
 ## ~/.config/i3/confi <br />
  
**Volume**
 I use Amixer to change my volume. If it doesn't work for You, change it with Pactl, Pamixer, or anything else.
```
bindsym XF86AudioRaiseVolume exec amixer -q set Master 5%+
bindsym XF86AudioLowerVolume exec amixer -q set Master 5%+
bindsym XF86AudioMute exec amixer set Master toggle
```

**Music Control GUI**
```
bindsym XF86AudioPlay exec playerctl play-pause
bindsym XF86AudioPause exec playerctl pause-pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous
```
**Music Control Cli**
```
bindsym Shift+XF86AudioPlay               exec --no-startup-id "mpc toggle"
bindsym Shift+XF86AudioNext               exec --no-startup-id "mpc next"
bindsym Shift+XF86AudioPrev               exec --no-startup-id "mpc prev"
```
**Auto Start**
Maybe You want to add some programs to your autostart, like network manager applet, clipboard manager, power manager, conky, and some goodies.
Probably your network manager applet is nm-applet. So, if want to use it, add `exec --no-startup-id nm-applet`.
```
#autostart
exec --no-startup-id hsetroot -center ~/.wallpaper.png
exec --no-startup-id xsettingsd &
exec --no-startup-id compton -b
```
**Workspace**<br />
That's my window rules. I use it to group apps on several workspace.

- Workspace 1 for Terminals
- Workspace 2 for Web
- Workspace 3 for File Manager
- Workspace 4 for Code
- Workspace 5 for Office
- Workspace 6 for Chat-Email
- Workspace 7 for Multimedia
- Workspace 8 for Desing
- Workspace 9 for Settings <br />

And I set some apps to launch in floating mode. You can make your own rules of course.
Maybe my window rules isn't efficient for You. My workspaces are 9, and it's than enough for me. 
```
# window rules, you can find the window class using xprop
for_window [class=".*"] border pixel 2
assign [class=URxvt] $1
assign [class=Opera|firefox|Uget|Transmission-gtk] $2
assign [class=Thunar|File-roller] $3
assign [class=Geany] $4
assign [class=Mousepad|soffice|libreoffice*|Evince] $5
assign [class=Telegram|Thunderbird] $6
assign [class=Audacity|Vlc|Audacious|mpv|Xfburn] $7
assign [class=Gimp*|Inkscape] $8
assign [class=Lxappearance|System-config-printer.py|Lxtask|GParted|qt*|Kvantum*|Pavucontrol|Exo-helper*|Lxrandr|Arand|Nitrogen|Gnome-disks] $9
for_window [class=Viewnior|feh|Telegram|Ramme|MPlayer|File-roller|Lxappearance|Lxtask|Pavucontrol|XTerm|calculator] floating enable
for_window [class=URxvt|Firefox|Geany|Evince|Soffice|libreoffice*|mpv|Ghb|Xfburn|Gimp*|Inkscape|Vlc|Lxappearance|Audacity] focus
for_window [class=Xfburn|GParted|System-config-printer.py|Lxtask|Pavucontrol|Exo-helper*|Lxrandr|Arandr] focus
```

**i3-status**<br />

That's my panel colour. I set it has a black background, with white color for workspace name.
Active workspace is highlighted by red colour, and urgent workspace will be highlighted with yellow colour.
If one of your workspaces is highlighted with yello
```
#i3-status
bar {
	colors {
        background #2f343f
        statusline #d8dee8
        #statusline #2f343f
        separator #4b5262
        
		# colour of border, background, and text
        focused_workspace	#BF616A	#BF616A	#d8dee8
        active_workspace	#2f343f	#2f343f	#d8dee8
        inactive_workspace	#2f343f	#2f343f	#d8dee8
        urgent_workspace	#2f343f	#ebcb8b	#2f343f
    }
        status_command i3status
        strip_workspace_numbers yes
        position bottom
        #position top
        height 25
		#mode hide
}
```
That's my settings of window border colour. 
I set the focused window border to white, and unfocused window border to black.
On focused window, the red border means splitting direction. 
If the red border is on the right, that means if You launch a new window on that workspace, it will be launched on the right of current focused window.
You can change the splitting direction to bottom using **Super + V**. If You want to split to right again, hit **Super + H**.
If You unsatisfied with it, just modify it 

```
# colour of border, background, text, indicator, and child_border
client.focused			#bf616a #2f343f #d8dee8 #d8dee8 #bf616a 
client.focused_inactive	#2f343f #2f343f #d8dee8 #2f343f #2f343f
client.unfocused		#2f343f #2f343f #d8dee8 #2f343f #2f343f
client.urgent			#2f343f #2f343f #d8dee8 #2f343f #2f343f
client.placeholder		#2f343f #2f343f #d8dee8 #2f343f #2f343f
client.background		#2f343f

```

## ~/.config/i3status/config <br />

You can comment out the module You want to disable. For example I disable the disk, ethernet, and battery. <br />
Then now You have to configure the variable. Don't forget to change both in *order* list and in function list. <br />
```
order += "load"
order += "cpu_temperature 0"
#order += "disk /"
#order += "disk /home"
#order += "ethernet enp1s0"
order += "wireless wlp2s0"
order += "volume master"
#order += "battery 1"
order += "tztime local"
```

