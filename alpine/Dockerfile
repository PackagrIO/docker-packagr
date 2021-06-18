ARG base_image
##################################################
##
## Generic
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

ENV PACKAGR_ENGINE_GIT_AUTHOR_NAME="packagrio-bot" \
    PACKAGR_ENGINE_GIT_AUTHOR_EMAIL="packagr-io[bot]@users.noreply.github.com"

WORKDIR /srv/packagr

RUN apk add --no-cache \
    ca-certificates \
    git \
    curl \
    bash \
	&& rm -rf /var/lib/apt/lists/*


ENV PATH="/srv/packagr:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./packagr.sh .

ARG packagr_version
RUN ./packagr.sh ${packagr_version}

CMD "packagr"
