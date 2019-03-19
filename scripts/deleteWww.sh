#!/bin/bash

StaticOutputBucket=$(aws cloudformation list-exports | \
  jq -cj \
    --arg searchValue \
      $HIDDEN_APP_NAME:$HIDDEN_WWW_SERVICE_NAME:$HIDDEN_ENV:StaticOutputBucketResourceName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')

echo $StaticOutputBucket
aws s3 rm s3://$StaticOutputBucket/ \
  --recursive

echo deleting associated service stack $HIDDEN_WWW_SERVICE_STACK_NAME
aws cloudformation delete-stack \
  --stack-name $HIDDEN_WWW_SERVICE_STACK_NAME
while [ $? -eq 0 ]
do
  aws cloudformation describe-stacks \
    --stack-name $HIDDEN_WWW_SERVICE_STACK_NAME
  sleep 5
done

echo deleting build stack $HIDDEN_WWW_BUILD_STACK_NAME
aws cloudformation delete-stack \
  --stack-name $HIDDEN_WWW_BUILD_STACK_NAME

