#!/usr/bin/env bash

set -o errexit

container=$(buildah from --format=docker opensuse/leap:15.2)

# Labels are part of the "buildah config" command
buildah config --label maintainer="Han Pengfei <pengphei@foxmail.com>" $container

buildah run $container zypper in  make patch gcc-c++ git ncurses-devel git-core python-devel
buildah config --onbuild="RUN zypper in  make patch gcc-c++ git ncurses-devel git-core python-devel" $container

# Finally saves the running container to an image
buildah commit --format=docker $container localhost/openwrt-suse
