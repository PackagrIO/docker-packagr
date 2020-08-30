# Docker images for Packagr

This repo contains docker images that have Packagr pre-installed.
It uses a "matrix" style build, allowing us to provide multiple versions of Packagr for multiple base OS's.


# Tagging

We use a standardized tagging convention to ensure that version tracking is easy:

`{PACKAGR_VERSION}-{LANGUAGE/ENGINE}{LANGUAGE_VERSION or blank when latest}`

eg. `docker pull packagrio/packagr:3.0.11-chefdk3.x`


Here's a partial list of Docker image tags that are available for Packagr. You can find the full list of base images for each
supported language and operating system by looking at the `hooks/versions.txt` file in each subdirectory.


## Alpine

| | Alpine latest | Alpine 3.10 | Alpine 3.9 | Apline 3.8 |
| --- | --- | --- | --- | --- |
| latest | latest-alpine | latest-alpine3.10 | latest-alpine3.9 | latest-alpine3.8 |
| 3.0.11 | 3.0.11-alpine | 3.0.11-alpine3.10 | 3.0.11-alpine3.9 | 3.0.11-alpine3.8 |
| 3.0.10 | 3.0.10-alpine | 3.0.10-alpine3.10 | 3.0.10-alpine3.9 | 3.0.10-alpine3.8 |

## Centos

| | Centos latest | Centos 8 | Centos 7 | Centos 6 |
| --- | --- | --- | --- | --- |
| latest | latest-centos | latest-centos8 | latest-centos7 | latest-centos6 |
| 3.0.11 | 3.0.11-centos | 3.0.11-centos8 | 3.0.11-centos7 | 3.0.11-centos6 |
| 3.0.10 | 3.0.10-centos | 3.0.10-centos8 | 3.0.10-centos7 | 3.0.10-centos6 |

## Chef

| | ChefDK latest | ChefDK 3.11.4 | ChefDK 2.3.17 | ChefDK 1.6.1 |
| --- | --- | --- | --- | --- |
| latest | latest-chefdk | latest-chefdk3.x | latest-chefdk2.x | latest-chefdk1.x |
| 3.0.11 | 3.0.11-chefdk | 3.0.11-chefdk3.x | 3.0.11-chefdk2.x | 3.0.11-chefdk1.x |
| 3.0.10 | 3.0.10-chefdk | 3.0.10-chefdk3.x | 3.0.10-chefdk2.x | 3.0.10-chefdk1.x |

## Golang

| | Golang latest | Golang 1.13 | Golang 1.12 | Golang 1.11 | Golang 1.10 |
| --- | --- | --- | --- | --- | --- |
| latest | latest-golang | latest-golang1.13 | latest-golang1.12 | latest-golang1.11 | latest-golang1.10 |
| 3.0.11 | 3.0.11-golang | 3.0.11-golang1.13 | 3.0.11-golang1.12 | 3.0.11-golang1.11 | 3.0.11-golang1.10 |
| 3.0.10 | 3.0.10-golang | 3.0.10-golang1.13 | 3.0.10-golang1.12 | 3.0.10-golang1.11 | 3.0.10-golang1.10 |

## Node

| | Node latest | Node 12 | Node 10 | Node 8 |
| --- | --- | --- | --- | --- |
| latest | latest-node | latest-node12 | latest-node10 | latest-node8 |
| 3.0.11 | 3.0.11-node | 3.0.11-node12 | 3.0.11-node10 | 3.0.11-node8 |
| 3.0.10 | 3.0.10-node | 3.0.10-node12 | 3.0.10-node10 | 3.0.10-node8 |

## Python

| | Python latest | Python 3.7 | Python 3.6 | Python 3.5 | Python 2.7 |
| --- | --- | --- | --- | --- | --- |
| latest | latest-python | latest-python3.7 | latest-python3.6 | latest-python3.5 | latest-python2.7 |
| 3.0.11 | 3.0.11-python | 3.0.11-python3.7 | 3.0.11-python3.6 | 3.0.11-python3.5 | 3.0.11-python2.7 |
| 3.0.10 | 3.0.10-python | 3.0.10-python3.7 | 3.0.10-python3.6 | 3.0.10-python3.5 | 3.0.10-python2.7 |

## Ruby

| | Ruby latest | Ruby 2.6 | Ruby 2.5 | Ruby 2.4 |
| --- | --- | --- | --- | --- |
| latest | latest-ruby | latest-ruby2.6 | latest-ruby2.5 | latest-ruby2.4 |
| 3.0.11 | 3.0.11-ruby | 3.0.11-ruby2.6 | 3.0.11-ruby2.5 | 3.0.11-ruby2.4 |
| 3.0.10 | 3.0.10-ruby | 3.0.10-ruby2.6 | 3.0.10-ruby2.5 | 3.0.10-ruby2.4 |

## Ubuntu

| | Ubuntu latest | Ubuntu 19.10 | Ubuntu 18.10 | Ubuntu 16.04 |
| --- | --- | --- | --- | --- |
| latest | latest-ubuntu | latest-ubuntu19.10 | latest-ubuntu18.10 | latest-ubuntu16.04 |
| 3.0.11 | 3.0.11-ubuntu | 3.0.11-ubuntu19.10 | 3.0.11-ubuntu18.10 | 3.0.11-ubuntu16.04 |
| 3.0.10 | 3.0.10-ubuntu | 3.0.10-ubuntu19.10 | 3.0.10-ubuntu18.10 | 3.0.10-ubuntu16.04 |





For docker hub setup, we need to make sure that the context is the root of the repo
and the dockerfile is located inside the repo


# References
- https://docs.docker.com/docker-hub/builds/advanced/
- https://gist.github.com/rossf7/664dc1eb02f514993c7215d37058965c
- https://forums.docker.com/t/docker-cloud-build-environment-variables-not-being-passed-to-the-auto-build/24010/2
- https://objectpartners.com/2017/09/20/docker-parameterized-builds-using-git-tags-part-1-of-2/
- https://michalklempa.com/2019/03/publishing-docker-image-to-docker-hub-automated-builds/
- https://medium.com/microscaling-systems/labelling-automated-builds-on-docker-hub-f3d073fb8e1
- https://microbadger.com/images/packagrio/packagr:python
- https://www.rubdos.be/docker/2017/03/10/docker-hub-build-hooks.html
- https://artsy.github.io/blog/2018/09/10/Dockerhub-Stamping-Commits/


- https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash
- https://stackoverflow.com/questions/10520623/how-to-split-one-string-into-multiple-variables-in-bash-shell

