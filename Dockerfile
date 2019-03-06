FROM docker:stable-git

# Metadata
ENV S2I_VERSION="1.1.13"
LABEL maintainer="Yannick Scherer <yannick.scherer@futurice.com>" \
      description="Image with docker, git and s2i (v${S2I_VERSION}) – for use in CI pipelines"

# Fetch URL for release with the desired version, then download and
# extract into /usr/local/bin
RUN wget -qO- https://api.github.com/repos/openshift/source-to-image/releases \
  |  grep "browser_download_url.*${S2I_VERSION}.*linux-amd64" \
  |  cut -d':' -f 2,3 \
  |  tr -d \" \
  |  xargs wget -O /tmp/s2i-${S2I_VERSION}.tar.gz \
  && cd /usr/local/bin \
  && tar -xzf /tmp/s2i-${S2I_VERSION}.tar.gz

ENTRYPOINT s2i
