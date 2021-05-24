FROM alpine

# Install required iproute2 package
RUN apk add iproute2
#RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq \
# && DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install iproute2

# Install resolve docker host IP script
COPY --from=tkotosz/resolve-docker-host-ip /usr/bin/resolve-docker-host-ip /usr/local/bin/resolve-docker-host-ip

# Wrap the entry point (sleep infinity) so that the host IP is resolved when the container started
ENTRYPOINT ["/usr/local/bin/resolve-docker-host-ip","sleep","infinity"]