# Container image that runs your code
FROM ubuntu:20.04

ENV cli_version="v0.21.0"

RUN set -eux; \
    apt update; \
    apt -y install curl; \
    curl --silent -L https://github.com/licensebat/licensebat/releases/download/${cli_version}/licensebat_linux.zip | gzip -d >> licensebat;

RUN chmod +x licensebat; \
    mv licensebat /usr/bin/licensebat;

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
