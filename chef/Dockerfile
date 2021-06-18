ARG base_image
##################################################
##
## ChefDK
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>
ENV PACKAGR_ENGINE_GIT_AUTHOR_NAME="packagr-io" \
    PACKAGR_ENGINE_GIT_AUTHOR_EMAIL="packagr-io[bot]@users.noreply.github.com"

WORKDIR /srv/packagr

RUN apt-get update && apt-get install -y --no-install-recommends \
 	apt-transport-https \
    ca-certificates \
    git \
    curl \
    locales \
	&& rm -rf /var/lib/apt/lists/* \
	&& locale-gen en_US.UTF-8 \
	&& gem install bundler-audit

ENV PATH="/srv/packagr:/usr/local/go/bin:/root/.chefdk/gem/ruby/2.4.0/bin:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./packagr.sh .

ARG packagr_version
RUN ./packagr.sh ${packagr_version}

CMD "packagr"
