# Docker images for Packagr

This repo contains docker images that have Packagr pre-installed.
It uses a "matrix" style build, allowing us to provide multiple versions of Packagr for multiple base OS's.


# Tagging

We use a standardized tagging convention to ensure that version tracking is easy:

`{PACKAGR_VERSION}-{LANGUAGE/ENGINE}{LANGUAGE_VERSION or blank when latest}`

eg. `docker pull ghcr.io/packagrio/packagr:3.0.11-chefdk3.x`


Here's a partial list of Docker image tags that are available for Packagr. You can find the full list of base images for each
supported language and operating system by looking at the `hooks/versions.txt` file in each subdirectory.


## Alpine

| | Alpine latest | Alpine 3.10 | Alpine 3.9 | Apline 3.8 |
| --- | --- | --- | --- | --- |
| latest | latest-alpine | latest-alpine3.10 | latest-alpine3.9 | latest-alpine3.8 |

## Centos

| | Centos latest | Centos 8 | Centos 7 |
| --- | --- | --- | --- |
| latest | latest-centos | latest-centos8 | latest-centos7 |

## Chef

| | ChefDK latest | ChefDK 3.11.4 | ChefDK 2.3.17 | ChefDK 1.6.1 |
| --- | --- | --- | --- | --- |
| latest | latest-chefdk | latest-chefdk3.x | latest-chefdk2.x | latest-chefdk1.x |

## Golang

| | Golang latest | Golang 1.13 | Golang 1.12 |
| --- | --- | --- | --- | 
| latest | latest-golang | latest-golang1.13 | latest-golang1.12 |

## Node

| | Node latest | Node 12 | Node 10 |
| --- | --- | --- | --- |
| latest | latest-node | latest-node12 | latest-node10 |

## Python

| | Python latest | Python 3.7 | Python 2.7 |
| --- | --- | --- | --- | 
| latest | latest-python | latest-python3.7 | latest-python2.7 |

## Ruby

| | Ruby latest | Ruby 2.6 | Ruby 2.5 |
| --- | --- | --- | --- |
| latest | latest-ruby | latest-ruby2.6 | latest-ruby2.5 |

## Ubuntu

| | Ubuntu latest | Ubuntu 19.10 |
| --- | --- | --- |
| latest | latest-ubuntu | latest-ubuntu20.10 |


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

