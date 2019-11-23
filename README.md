# Docker images for CapsuleCD

This repo contains docker images that have CapusuleCD pre-installed.
It uses a "matrix" style build, allowing us to provide multiple versions of CapsuleCD for multiple base OS's.


# Tagging

We use a standardized tagging convention to ensure that version tracking is easy:

`{CAPSULECD_VERSION}-{LANGUAGE/ENGINE}{LANGUAGE_VERSION or ignored for `latest`}`

Here's an example table containing the docker image tags containing CapsuleCD for Alpine

| --- | Alpine latest | Alpine 3.10 | Alpine 3.9 | Apline 3.8 |
| latest | latest-alpine | latest-alpine3.10 | latest-alpine-3.9 | latest-alpine3.8 |
| 3.0.11 | 3.0.11-alpine | 3.0.11-alpine3.10 | 3.0.11-alpine-3.9 | 3.0.11-alpine3.8 |
| 3.0.10 | 3.0.10-alpine | 3.0.10-alpine3.10 | 3.0.10-alpine-3.9 | 3.0.10-alpine3.8 |





For docker hub setup, we need to make sure that the context is the root of the repo
and the dockerfile is located inside the repo


# References
- https://docs.docker.com/docker-hub/builds/advanced/
- https://gist.github.com/rossf7/664dc1eb02f514993c7215d37058965c
- https://forums.docker.com/t/docker-cloud-build-environment-variables-not-being-passed-to-the-auto-build/24010/2
- https://objectpartners.com/2017/09/20/docker-parameterized-builds-using-git-tags-part-1-of-2/
- https://michalklempa.com/2019/03/publishing-docker-image-to-docker-hub-automated-builds/
- https://medium.com/microscaling-systems/labelling-automated-builds-on-docker-hub-f3d073fb8e1
- https://microbadger.com/images/analogj/capsulecd:python
- https://www.rubdos.be/docker/2017/03/10/docker-hub-build-hooks.html
- https://artsy.github.io/blog/2018/09/10/Dockerhub-Stamping-Commits/


- https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash
- https://stackoverflow.com/questions/10520623/how-to-split-one-string-into-multiple-variables-in-bash-shell

