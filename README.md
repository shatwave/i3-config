## Preview
<div align="center">
    <img src="/preview-clean.png"</img> 
</div> <br />
Clean, without any opened app. Only i3status is visible <br /><br />
<div align="center">
    <img src="/rofi.png"</img> 
</div>
Rofi, for launching apps <br /><br />
<div align="center">
    <img src="/preview-splitscreen.png"</img> 
</div>
Splitscreen, Vim on the left , Ncmpcpp on the top right , Cava on the buttom right </br><br />
<div align="center">
    <img src="/preview-floating.png"</img> 
</div>
Floating, for show-off. <br /><br />
<div align="center">
    <img src="/start-page.png"</img> 
</div>
Start Page, start-page on Firefox <br />



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
- **Terminal :** URxvt
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
<br />
- **Super + Shift + w** Firefox
- **Super + Shift + a** Audacious
- **Super + Shift + f** Thunra
- **Super + Shift + g** Geany
 
## Volume
```
bindsym XF86AudioRaiseVolume exec amixer -q set Master 5%+
bindsym XF86AudioLowerVolume exec amixer -q set Master 5%+
bindsym XF86AudioMute exec amixer set Master toggle
```

## Music Control GUI
```
bindsym XF86AudioPlay exec playerctl play-pause
bindsym XF86AudioPause exec playerctl pause-pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous
```
## Music Control Cli
```
bindsym Shift+XF86AudioPlay               exec --no-startup-id "mpc toggle"
bindsym Shift+XF86AudioNext               exec --no-startup-id "mpc next"
bindsym Shift+XF86AudioPrev               exec --no-startup-id "mpc prev"
```
## Auto Start
```
exec --no-startup-id hsetroot -full ~/.wallpaper.jpg
#exec --no-startup-id nm-applet
exec --no-startup-id xsettingsd &
exec --no-startup-id compton -b
exec --no-startup-id xfce4-power-manager
exec --no-startup-id pa-applet
exec --no-startup-id mpd
```

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
