ARG base_image
##################################################
##
## Generic
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/capsulecd

RUN apk add --no-cache \
    ca-certificates \
    git \
    curl \
	&& rm -rf /var/lib/apt/lists/*


ENV PATH="/srv/capsulecd:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./capsulecd.sh .

ARG capsulecd_version
RUN ./capsulecd.sh ${capsulecd_version}

CMD "capsulecd"
