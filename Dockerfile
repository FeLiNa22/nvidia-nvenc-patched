ARG DRIVER_VERSION=latest
ARG OS_VERSION=ubuntu24.04
FROM nvcr.io/nvidia/driver:${DRIVER_VERSION}-${OS_VERSION}

# Patch repository
RUN mkdir -p /usr/local/bin /patched-lib
RUN curl -fsSL https://raw.githubusercontent.com/keylase/nvidia-patch/refs/heads/master/docker-entrypoint.sh -o /usr/local/bin/docker-entrypoint.sh
RUN curl -fsSL https://raw.githubusercontent.com/keylase/nvidia-patch/refs/heads/master/patch.sh -o /usr/local/bin/patch.sh
RUN chmod +x /usr/local/bin/patch.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
