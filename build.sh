#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

curl https://copr.fedorainfracloud.org/coprs/varlad/zellij/repo/fedora-$(rpm -E %fedora)/varlad-zellij-fedora-$(rpm -E %fedora).repo > /etc/yum.repos.d/_copr_varlad-zellij.repo
curl https://copr.fedorainfracloud.org/coprs/atim/lazygit/repo/fedora-$(rpm -E %fedora)/atim-lazygit-fedora-$(rpm -E %fedora).repo > /etc/yum.repos.d/_copr_atim-lazygit.repo

# this installs a package from fedora repos
rpm-ostree install neovim pass git jq yq bat fzf ripgrep htop eza stow syncthing ansible hyprland lazygit zellij
# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

systemctl enable podman.socket
