# storing some handy environment configs for my personal docker containers
# FROM google/nodejs
FROM dockerfile/nodejs

MAINTAINER  Christopher Lyth <cjlyth@gmail.com>

RUN locale-gen en_US en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8 LC_MESSAGES=POSIX

ENV CI true
ENV NPM_CONFIG_UNSAFE_PERM false
ENV NPM_CONFIG_PARSEABLE true
ENV NPM_CONFIG_IGNORE_SCRIPTS true
ENV NPM_CONFIG_LINK true

ENV NPM_CONFIG_YES true
ENV NPM_CONFIG_NPAT false
ENV NPM_CONFIG_LOGLEVEL win

ENV BOWER_ALLOW_ROOT true
ENV BOWER_LOG_LEVEL debug


ENTRYPOINT ["/usr/bin/env"]
CMD ["bash"]