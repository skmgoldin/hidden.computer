#!/bin/bash

. ./scripts/setEnv.sh
if [ $? -gt 0 ]
then
  exit 1
fi

StaticOutputBucket=$(aws cloudformation list-exports | \
  jq -cj \
    --arg searchValue \
      $APP_NAME:$SERVICE_NAME:$ENV:StaticOutputBucketResourceName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')

echo $StaticOutputBucket
aws s3 rm s3://$StaticOutputBucket/ \
  --recursive

echo deleting associated service stack $SERVICE_STACK_NAME
aws cloudformation delete-stack \
  --stack-name $SERVICE_STACK_NAME
while [ $? -eq 0 ]
do
  sleep 5
  aws cloudformation describe-stacks \
    --stack-name $SERVICE_STACK_NAME
done

echo deleting build stack $BUILD_STACK_NAME
aws cloudformation delete-stack \
  --stack-name $BUILD_STACK_NAME

