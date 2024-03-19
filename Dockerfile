FROM ghcr.io/z-docker/archlinux:multilib
LABEL maintainer="Zero <github.com/z-nerd>" 
LABEL description="Android ndk" 

RUN sudo pacman-key --init && \
  sudo pacman-key --populate archlinux && \
  sudo pacman -Syu --noconfirm 

RUN sudo pacman -S ccache lzop python-networkx squashfs-tools \
  pngcrush schedtool optipng maven pwgen minicom bc zip unzip \
  android-tools --noconfirm && \
  yes | sudo pacman -Scc

RUN yay -S android-ndk --noconfirm && \
  yes | yay -Scc

