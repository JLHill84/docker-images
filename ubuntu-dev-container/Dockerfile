FROM ubuntu:20.04
ADD ./scripts/timezone.sh /timezone.sh
RUN /timezone.sh
RUN apt-get install -y \
    apt-transport-https \
    curl \
    git \
    gnome-panel \
    gnome-settings-daemon \
    gnome-terminal \
    metacity \
    nautilus \
    nodejs \
    npm \
    python \
    python3-pip \
    software-properties-common \
    ubuntu-desktop \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/* \
    && apt autoremove
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
RUN apt install code -y
ADD ./scripts/upgrade-versions.sh /upgrade-versions.sh
RUN /upgrade-versions.sh
RUN echo 'source ~/.profile'
ADD ./scripts/nvm.sh /nvm.sh
RUN /nvm.sh

# how to refresh the shell?