#!/bin/bash

. ./scripts/setEnv.sh
if [ $? -gt 0 ]
then
  exit 1
fi

bucket=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $APP_NAME:ApplicationUtilityBucketName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')

aws s3 cp \
  --recursive \
  --exclude *.swp \
  infra/$SERVICE_NAME/build \
  s3://$bucket/$SERVICE_NAME/$ENV/build-infra/

