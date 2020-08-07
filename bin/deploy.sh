#!/bin/bash

if [ "$TRAVIS_TAG" !='' ]; then
  echo "Publishing Maven snapshot..."
  mvn_deploy
fi

function mvn_deploy() {
    mvn clean deploy --settings="$(dirname %0)/settings.xml" -DskipTests=true "$@"
}
