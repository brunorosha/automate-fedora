#!/bin/bash

# Instalar o RPM Fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Habilitar o Flathub, que é a melhor maneira de obter aplicativos Flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 

# Instalar o 1Password
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password -y

# Instalar o Piper para gerenciar o MX Master 3
sudo dnf install piper -y

# Instalar o Google Chrome (e remover o aviso de gerenciado pela organização)
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y
sudo dnf remove fedora-chromium-config -y

# Instalar as fontes da Microsoft
sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y

# Instalar aplicativos em flatpak
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub tech.feliciano.pocket-casts
flatpak install flathub com.obsproject.Studio
flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub org.gnome.Boxes
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub org.nickvision.tubeconverter
flatpak install flathub org.localsend.localsend_app
flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor
flatpak install flathub de.haeckerfelix.Fragments
flatpak install flathub com.rtosta.zapzap
flatpak install flathub com.todoist.Todoist
flatpak install flathub com.discordapp.Discord
flatpak install flathub io.github.pwr_solaar.solaar
flatpak install flathub io.github.brunofin.Cohesion
