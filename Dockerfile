FROM bash AS build

COPY resolve-docker-host-ip /tmp/resolve-docker-host-ip
RUN chmod +x /tmp/resolve-docker-host-ip

FROM scratch

COPY --from=build /tmp/resolve-docker-host-ip /usr/bin/resolve-docker-host-ip