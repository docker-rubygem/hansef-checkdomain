FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.9

RUN gem install hansef-checkdomain --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["checkdomain"]
CMD ["--help"]