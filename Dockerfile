# Dockerfile
# Use a specific version of Ubuntu that matches the desired environment.
# Note: Ubuntu 16.04 is very old and its packages may not be up-to-date or secure.
FROM ubuntu:16.04
WORKDIR /home
# Install necessary dependencies and add the PPA for Ruby 1.8.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        software-properties-common \
        wget \
        git \
        jq \
        build-essential && \
    apt-add-repository ppa:brightbox/ruby-ng && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        ruby1.8 \
        ruby1.8-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/TiddlyWiki/cooker.git && \
    cd cooker

# Set the default command to run when the container starts
CMD ["bash"]
