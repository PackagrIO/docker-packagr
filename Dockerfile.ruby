FROM analogj/capsulecd-base
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

CMD ["capsulecd", "start", "--source", "github", "--package_type", "ruby"]