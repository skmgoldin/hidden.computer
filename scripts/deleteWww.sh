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
let waitTime=1
aws cloudformation delete-stack \
  --stack-name $SERVICE_STACK_NAME
while [ $? -eq 0 ]
do
  echo $(date +%H:%M:%S): Backing off to wait $waitTime seconds before querying service stack \
    deletion again...
  sleep $waitTime
  let waitTime=$(( ($waitTime+($RANDOM%5))*2 ))
  aws cloudformation describe-stacks \
    --stack-name $SERVICE_STACK_NAME >/dev/null 2>&1
done

echo deleting build stack $BUILD_STACK_NAME
aws cloudformation delete-stack \
  --stack-name $BUILD_STACK_NAME

