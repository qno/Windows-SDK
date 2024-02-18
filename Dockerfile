FROM ubuntu:latest as builder
ENV LANG C.UTF-8

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends p7zip-full

COPY WindowsSDK.tar.7z /
RUN 7z x WindowsSDK.tar.7z ; rm WindowsSDK.tar.7z && \
    tar -xf WindowsSDK.tar ; rm WindowsSDK.tar && \
    ls -lh && ls -lh WindowsSDK/

FROM scratch
RUN --mount=type=bind,from=builder,source=/WindowsSDK,target=/mnt/WindowsSDK cp -rf /mnt/WindowsSDK .
