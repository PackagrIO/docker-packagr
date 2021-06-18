ARG base_image
##################################################
##
## Generic
##
##################################################
FROM $base_image
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/packagr

RUN yum install -y \
    ca-certificates \
    git \
    curl \
	&& rm -rf /var/lib/apt/lists/*


ENV PATH="/srv/packagr:${PATH}" \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

COPY ./packagr.sh .

ARG packagr_version
RUN ./packagr.sh ${packagr_version}

CMD "packagr"
