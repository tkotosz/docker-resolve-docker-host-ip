# resolve-docker-host-ip

On MAC and Windows the `host.docker.internal` hostname resolves to the docker gateway host IP by default, but on Linux this is not available yet.
This shell script is for adding the same `host.docker.internal` entry to the hosts file in the container on Linux.

[Docker image](https://hub.docker.com/repository/docker/tkotosz/resolve-docker-host-ip) is also available.

## Usage

```
FROM ...

# install resolve-docker-host-ip script
COPY --from=tkotosz/resolve-docker-host-ip /usr/bin/resolve-docker-host-ip /usr/local/bin/resolve-docker-host-ip

...

# Wrap the entry point (sleep infinity in this case) so that the host IP is resolved when the container started
ENTRYPOINT ["/usr/local/bin/resolve-docker-host-ip","sleep","infinity"]
```

See `Dockerfile` in the `test` folder for example.
