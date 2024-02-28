#!/usr/bin/env bash
set -e

# Need to have at least one args  that is a number
if [[ $# -lt 1 ]] && [ $1 -eq $1 ] 2>/dev/null; then
    printf "BAD  Params :(\n\nUsage: $(basename $0) version #\n"
    exit 1
fi

ver=$1
shift

echo "Downloading version $ver"
sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=$ver
