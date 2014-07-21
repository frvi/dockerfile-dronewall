#!/bin/bash

REPOARG=""

if [[ ! -z "$REPOS" ]]; then
  for REPO in $REPOS; do
    REPOARG="${REPOARG}$REPO,"
  done
fi

exec drone-wall --datasource=/var/lib/drone/drone.sqlite --repos="${REPOARG%?}" --team="$TEAM" --port=:8090
