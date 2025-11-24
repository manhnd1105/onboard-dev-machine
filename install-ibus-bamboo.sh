#!/bin/bash
# guide https://gist.github.com/lelinhtinh/fc660f3222a1da1b7ff923a4080742e5

# sudo
add-apt-repository ppa:bamboo-engine/ibus-bamboo
apt-get update
apt-get install ibus ibus-bamboo --install-recommends
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
