#!/bin/bash
echo $TRAVIS_TAG

if [ "$TRAVIS_TAG"=""]; then
  echo "tag is null"
else
  echo "Publishing Maven snapshot..."
  mvn_deploy
fi

function mvn_deploy() {
    mvn clean deploy --settings="$(dirname %0)/settings.xml" -DskipTests=true "$@"
}
