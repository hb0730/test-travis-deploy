#!/bin/bash
echo $TRAVIS_TAG

if [ -z $TRAVIS_TAG ]; then
  echo "tag is null"
else
  echo "Publishing Maven snapshot..."
  openssl aes-256-cbc -K $encrypted_81c98acad902_key -iv $encrypted_81c98acad902_iv -in bin/codesigning.asc.enc -out bin/codesigning.asc -d
  gpg --fast-import bin/codesigning.asc

  mvn clean deploy --settings=bin/settings.xml -DskipTests=true
fi
