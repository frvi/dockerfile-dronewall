#!/bin/bash

REPOARG=""

if [[ ! -z "$REPOS" ]]; then
  for REPO in $REPOS; do
    REPOARG="${REPOARG}github.com/$REPO,"
  done
fi

# Start drone-wall
exec drone-wall --datasource=/var/lib/drone/drone.sqlite --repos="${REPOARG%?}" --port=:8090

