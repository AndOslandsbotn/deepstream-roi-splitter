FROM ubuntu:24.04
RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-base \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    ffmpeg \
    build-essential \
    pkg-config \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev

# Colored bash prompt
RUN echo 'export PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \[\e[0m\]\$ "' >> /root/.bashrc
RUN echo 'export PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \[\e[0m\]\$ "' >> /etc/bash.bashrc