FROM nvcr.io/nvidia/deepstream:8.0-gc-triton-devel

# Install minimal nice-to-have tools
RUN apt-get update && apt-get install -y --no-install-recommends \
  vim less \
  && rm -rf /var/lib/apt/lists/*

# Colored bash prompt
RUN echo 'export PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \[\e[0m\]\$ "' >> /root/.bashrc
RUN echo 'export PS1="\[\e[1;32m\]\u@\h \[\e[1;34m\]\w \[\e[0m\]\$ "' >> /etc/bash.bashrc