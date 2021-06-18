#!/usr/bin/env bash
# retrieve the latest packagr binaries
########################################################################################################################
# Bumpr
########################################################################################################################

export RELEASE_URL="https://api.github.com/repos/packagrio/bumpr/releases/"
if [ "${1}" == "latest" ]; then
    export RELEASE_URL="${RELEASE_URL}${1}"
else
    export RELEASE_URL="${RELEASE_URL}tags/v${1}"
fi

export asset_url=$(curl -s "${RELEASE_URL}" \
	| grep browser_download_url | grep 'packagr-bumpr-linux' | cut -d '"' -f 4)

# download the bumpr asset here.
echo "curl -L -o packagr-bumpr $asset_url"
curl -L -o packagr-bumpr $asset_url

# make bumpr executable
chmod +x packagr-bumpr

########################################################################################################################
# Releasr
########################################################################################################################

export RELEASE_URL="https://api.github.com/repos/packagrio/releasr/releases/"
if [ "${1}" == "latest" ]; then
    export RELEASE_URL="${RELEASE_URL}${1}"
else
    export RELEASE_URL="${RELEASE_URL}tags/v${1}"
fi

export asset_url=$(curl -s "${RELEASE_URL}" \
	| grep browser_download_url | grep 'packagr-releasr-linux' | cut -d '"' -f 4)

# download the releasr asset here.
echo "curl -L -o packagr-releasr $asset_url"
curl -L -o packagr-releasr $asset_url

# make releasr executable
chmod +x packagr-releasr


########################################################################################################################
# Publishr
########################################################################################################################

export RELEASE_URL="https://api.github.com/repos/packagrio/publishr/releases/"
if [ "${1}" == "latest" ]; then
    export RELEASE_URL="${RELEASE_URL}${1}"
else
    export RELEASE_URL="${RELEASE_URL}tags/v${1}"
fi

export asset_url=$(curl -s "${RELEASE_URL}" \
	| grep browser_download_url | grep 'packagr-publishr-linux' | cut -d '"' -f 4)

# download the publishr asset here.
echo "curl -L -o packagr-publishr $asset_url"
curl -L -o packagr-publishr $asset_url

# make publishr executable
chmod +x packagr-publishr
