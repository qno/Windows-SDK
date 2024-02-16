FROM ubuntu:latest
ENV LANG C.UTF-8

# Create unprivileged user
RUN groupadd -g 1000 build
RUN useradd --create-home --uid 1000 --gid 1000 --shell /bin/bash build

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends p7zip-full && \
    rm -rf /var/lib/apt/lists/*

USER build
WORKDIR /home/build/
COPY --chown=build:build WindowsSDK.tar.* /home/build/
RUN 7z x WindowsSDK.tar.7z
RUN tar -xf WindowsSDK.tar
RUN rm WindowsSDK.* && \
    ls -lh && ls -h WindowsSDK/
