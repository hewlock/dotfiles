#!/bin/bash

# For supported keys see: /usr/share/themes/Emacs/gtk-3.0/gtk-keys.css
cmd "gsettings set org.gnome.desktop.interface gtk-key-theme \"Emacs\""

cmd "gsettings set org.gnome.desktop.input-sources xkb-options \"['grp:alt_shift_toggle', 'ctrl:nocaps', 'compose:menu']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys next \"['AudioNext']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys play \"['AudioPlay']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys previous \"['AudioPrev']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down \"['AudioLowerVolume']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute \"['AudioMute']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up \"['AudioRaiseVolume']\""
