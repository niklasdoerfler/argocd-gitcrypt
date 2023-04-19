FROM argoproj/argocd:v2.6.7

USER root

RUN apt-get update -y \
 && apt-get install -y git-crypt \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mv /usr/bin/git /usr/bin/git.bin
COPY git-wrapper /usr/bin/git

USER 999