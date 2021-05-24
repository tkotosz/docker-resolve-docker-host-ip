# resolve-docker-host-ip

On MAC and Windows the `host.docker.internal` hostname resolves to the docker gateway host IP by default, but on Linux this is not available yet.
This shell script is for adding the same `host.docker.internal` entry to the hosts file in the container on Linux.

[Docker image](https://hub.docker.com/repository/docker/tkotosz/resolve-docker-host-ip) is also available.

## Usage

```
FROM ...

# install mhsendmail-wrapper
COPY --from=tkotosz/resolve-docker-host-ip /usr/bin/resolve-docker-host-ip /usr/local/bin/resolve-docker-host-ip

...
```

See `Dockerfile` in the `test` folder for example.