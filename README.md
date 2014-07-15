# Drone-wall
Run [drone-wall](https://github.com/drone/drone-wall) in a [Docker](http://docker.io/) container.

Link: [frvi/drone-wall](https://registry.hub.docker.com/u/frvi/drone-wall/)

## Prerequisites
This Docker image needs a running, and configured, [mattgruter/drone](https://registry.hub.docker.com/u/mattgruter/drone/) container.

## Run
```docker run -d -p 8090:8090 --volumes-from drone frvi/drone-wall```

And point your browser to [http://localhost:8090/](http://localhost:8090/).

## Configuration
### Github repositories
To select github repo(s), use environment variable *REPOS*:

```docker run -e REPOS=drone/drone,dotcloud/docker -d -p 8090:8090 frvi/dronewall```

### TODO:

