# Drone-wall
Run [drone-wall](https://github.com/drone/drone-wall) in a [Docker](http://docker.io/) container.

Link: [frvi/drone-wall](https://registry.hub.docker.com/u/frvi/drone-wall/)

## Prerequisites
This Docker image needs a running, and configured, [mattgruter/drone](https://registry.hub.docker.com/u/mattgruter/drone/) container.

## Run
To specify the github and/or gitlab repo(s) to monitor, add the *--repos* parameter:

```docker run -d -p 8090:8090 --volumes-from drone frvi/drone-wall --repos=github.com/drone/drone,github.com/dotcloud/docker```

Alternately you can specify the team to monitor, with the *--team* parameter:

```docker run -d -p 8090:8090 --volumes-from drone frvi/drone-wall --team=devops```

And point your browser to [http://localhost:8090/](http://localhost:8090/).

### TODO:

