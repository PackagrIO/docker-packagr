#!/usr/bin/env bash
# retrieve the latest packagr binaries

# Download artifacts from github release for a Packagrio repository
# download_github_release_asset {git_tag/latest} {packagr_tool_name}
function download_github_release_asset {
  export RELEASE_URL="https://api.github.com/repos/packagrio/${2}/releases/"
  if [ "${1}" == "latest" ]; then
      export RELEASE_URL="${RELEASE_URL}${1}"
  else
      export RELEASE_URL="${RELEASE_URL}tags/v${1}"
  fi

  export asset_url=$(curl -s "${RELEASE_URL}" \
    | grep browser_download_url | grep "packagr-${2}-linux" | cut -d '"' -f 4)

  # download the tool asset here.
  echo "curl -L -o packagr-${2} $asset_url"
  curl -L -o "packagr-${2}" $asset_url

  # make tool executable
  chmod +x "packagr-${2}"
}

download_github_release_asset "latest" "bumpr"
download_github_release_asset "latest" "releasr"
download_github_release_asset "latest" "publishr"
