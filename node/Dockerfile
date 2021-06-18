ARG base_image
##################################################
##
## Node
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>
ENV PACKAGR_ENGINE_GIT_AUTHOR_NAME="packagrio-bot" \
    PACKAGR_ENGINE_GIT_AUTHOR_EMAIL="packagr-io[bot]@users.noreply.github.com" \
    PACKAGR_PACKAGE_TYPE=node

WORKDIR /srv/packagr

RUN apt-get update && apt-get install -y --no-install-recommends \
 	apt-transport-https \
    ca-certificates \
    git \
    curl \
	locales \
	&& rm -rf /var/lib/apt/lists/* \
	&& locale-gen en_US.UTF-8 \
	&& npm install -g eslint \
	&& npm install -g nsp

ENV PATH="/srv/packagr:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./packagr.sh .

ARG packagr_version
RUN ./packagr.sh ${packagr_version}

CMD "packagr"
