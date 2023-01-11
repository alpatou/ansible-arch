FROM archlinux/archlinux:base-devel

RUN pacman -Syu --needed --noconfirm git

# makepkg user and workdir
ARG user=makepkg
RUN useradd --system --create-home $user \
  && echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/$user
USER $user
WORKDIR /home/$user

# Install yay
RUN git clone https://aur.archlinux.org/yay.git \
  && cd yay \
  && makepkg -sri --needed --noconfirm \
  && cd \
  # Clean up
  && rm -rf .cache yay


# Install dependencies

RUN  sudo pacman -Sy --noconfirm ansible python
RUN ansible-galaxy collection install kewlfft.aur

# Set the working directory
WORKDIR /ansible

# Run the playbook when the container starts
#CMD ["ansible-playbook", "/ansible/myplaybook.yml"]

#ENTRYPOINT ["sleep"]

