##################################################
##
## Ruby
##
##################################################
FROM ruby:2.4 AS ruby
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/capsulecd

RUN apt-get update && apt-get install -y --no-install-recommends \
 	apt-transport-https \
    ca-certificates \
    git \
    curl \
	&& rm -rf /var/lib/apt/lists/* \
	&& gem install rubocop \
	&& gem install rake \
	&& gem install bundler-audit

ENV PATH="/srv/capsulecd:${PATH}" \
	SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

COPY ./capsulecd.sh .

RUN ./capsulecd.sh

CMD "capsulecd"
