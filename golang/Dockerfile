ARG base_image
##################################################
##
## Golang
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/packagr

RUN apt-get update && apt-get install -y --no-install-recommends \
 	apt-transport-https \
    ca-certificates \
    git \
    curl \
	locales \
	&& rm -rf /var/lib/apt/lists/* \
	&& locale-gen en_US.UTF-8 \
	&& go get -u gopkg.in/alecthomas/gometalinter.v2 \
	&& gometalinter.v2 --install \
	&& go get github.com/Masterminds/glide \
    && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh


ENV PATH="/srv/packagr:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./packagr.sh .

ARG packagr_version
RUN ./packagr.sh ${packagr_version}

CMD "packagr"
