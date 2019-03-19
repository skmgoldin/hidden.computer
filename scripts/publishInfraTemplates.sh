#!/bin/bash

bucket=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $HIDDEN_APP_NAME:ApplicationUtilityBucketName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')

aws s3 cp \
  --recursive \
  --exclude *.swp \
  infra/$HIDDEN_WWW_SERVICE_NAME/build \
  s3://$bucket/$HIDDEN_WWW_SERVICE_NAME/$HIDDEN_ENV/build-infra/

