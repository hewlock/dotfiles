#!/bin/bash

cmd "gsettings set org.gnome.desktop.input-sources xkb-options \"['grp:alt_shift_toggle', 'ctrl:nocaps', 'compose:menu']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys next \"['AudioNext']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys play \"['AudioPlay']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys previous \"['AudioPrev']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down \"['AudioLowerVolume']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute \"['AudioMute']\""
cmd "gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up \"['AudioRaiseVolume']\""
