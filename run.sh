#!/bin/bash

REPOARG=""

if [[ -z "$GITHUB" && -z "$GITLAB" ]]; then
  echo "Please set at least one of \$GITHUB or \$GITLAB" 
  exit 1
fi

if [[ ! -z "$GITHUB" ]]; then
  for REPO in $GITHUB; do
    REPOARG="${REPOARG}github.com/$REPO,"
  done
fi


if [[ ! -z "$GITLAB" ]]; then
  for REPO in $GITLAB; do
    REPOARG="${REPOARG}gitlab.com/$REPO,"
  done
fi

# Start drone-wall
exec drone-wall --datasource=/var/lib/drone/drone.sqlite --repos="${REPOARG%?}" --port=:8090

