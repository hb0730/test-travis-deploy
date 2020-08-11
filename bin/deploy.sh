#!/bin/bash
echo $TRAVIS_TAG

if [ -z $TRAVIS_TAG ]; then
  echo "tag is null"
else
  echo "Publishing Maven snapshot..."
  openssl aes-256-cbc -K $encrypted_c7d28ed8a9a3_key -iv $encrypted_c7d28ed8a9a3_iv -in bin/codesigning.gpg.enc -out bin/codesigning.gpg -d
  gpg --import bin/codesigning.gpg
  mvn clean deploy --settings=bin/settings.xml -DskipTests=true
fi
