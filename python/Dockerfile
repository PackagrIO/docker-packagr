ARG base_image
##################################################
##
## Python
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
    pylint \
	locales \
	&& rm -rf /var/lib/apt/lists/* \
	&& locale-gen en_US.UTF-8 \
	&& pip install tox \
	&& pip install safety \
	&& pip install twine

ENV PATH="/srv/packagr:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./packagr.sh .

ARG packagr_version
RUN ./packagr.sh ${packagr_version}

CMD "packagr"
