ARG base_image
##################################################
##
## ChefDK
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/capsulecd

RUN apt-get update && apt-get install -y --no-install-recommends \
 	apt-transport-https \
    ca-certificates \
    git \
    curl \
    locales \
	&& rm -rf /var/lib/apt/lists/* \
	&& locale-gen en_US.UTF-8 \
	&& gem install bundler-audit

ENV PATH="/srv/capsulecd:/usr/local/go/bin:/root/.chefdk/gem/ruby/2.4.0/bin:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./capsulecd.sh .

ARG capsulecd_version
RUN ./capsulecd.sh ${capsulecd_version}

CMD "capsulecd"
