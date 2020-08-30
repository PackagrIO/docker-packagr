#!/usr/bin/env bash
# retrieve the latest packagr release info

# TODO: this is currently a noop. 

#RELEASE_URL="https://api.github.com/repos/packagrio/packagr/releases/"
#
#if [ "${1}" == "latest" ]; then
#    RELEASE_URL="${RELEASE_URL}${1}"
#else
#    RELEASE_URL="${RELEASE_URL}tags/v${1}"
#fi
#
#asset_url=$(curl -s "${RELEASE_URL}" \
#	| grep browser_download_url | grep 'packagr-linux' | cut -d '"' -f 4)
#
## download the packagr asset here.
#echo "curl -L -o packagr $asset_url"
#curl -L -o packagr $asset_url
#
## make packagr executable
#chmod +x packagr
