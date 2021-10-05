FROM jenkins/ssh-agent

RUN apt-get update \
    && apt-get install --no-install-recommends -y git hugo rsync ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*