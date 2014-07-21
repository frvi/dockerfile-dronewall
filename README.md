# Drone-wall
Run [drone-wall](https://github.com/drone/drone-wall) in a [Docker](http://docker.io/) container.

Link: [frvi/drone-wall](https://registry.hub.docker.com/u/frvi/drone-wall/)

## Prerequisites
This Docker image needs a running, and configured, [mattgruter/drone](https://registry.hub.docker.com/u/mattgruter/drone/) container.

## Run
To specify the github repo(s) to monitor, use environment variable *REPOS*:

```docker run -d -e REPOS=github.com/drone/drone,github.com/dotcloud/docker -p 8090:8090 --volumes-from drone frvi/drone-wall```

Alternately you can specify the team to monitor, use environment variable *TEAM*:

```docker run -d -e TEAM=devops -p 8090:8090 --volumes-from drone frvi/drone-wall```

And point your browser to [http://localhost:8090/](http://localhost:8090/).

### TODO:

