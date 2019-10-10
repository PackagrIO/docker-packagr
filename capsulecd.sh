#!/usr/bin/env bash
# retrieve the latest capsulecd release info

RELEASE_URL="https://api.github.com/repos/AnalogJ/capsulecd/releases/"

if [ "${1}" == "latest" ]; then
    RELEASE_URL="${RELEASE_URL}${1}"
else
    RELEASE_URL="${RELEASE_URL}tags/v${1}"
fi

asset_url=$(curl -s "${RELEASE_URL}" \
	| grep browser_download_url | grep 'capsulecd-linux' | cut -d '"' -f 4)

# download the capsulecd asset here.
echo "curl -L -o capsulecd $asset_url"
curl -L -o capsulecd $asset_url

# make capsulecd executable
chmod +x capsulecd
