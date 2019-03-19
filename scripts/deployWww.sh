#!/bin/bash

./scripts/publishInfraTemplates.sh

AppName=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $HIDDEN_APP_NAME:AppName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppUtilityBucket=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $HIDDEN_APP_NAME:ApplicationUtilityBucketName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppRegion=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $HIDDEN_APP_NAME:AwsRegion \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppAccountId=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $HIDDEN_APP_NAME:AwsAccountId \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppHostedZoneId=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $HIDDEN_APP_NAME:HostedZoneId \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')

aws cloudformation create-stack \
  --stack-name $HIDDEN_WWW_BUILD_STACK_NAME \
  --template-body file://infra/$HIDDEN_WWW_SERVICE_NAME/build/Build.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters \
    ParameterKey=AppName,ParameterValue=$AppName \
    ParameterKey=ServiceName,ParameterValue=$HIDDEN_WWW_SERVICE_NAME \
    ParameterKey=ServiceEnv,ParameterValue=$HIDDEN_ENV \
    ParameterKey=ServiceStackName,ParameterValue=$HIDDEN_WWW_SERVICE_STACK_NAME \
    ParameterKey=UtilityBucket,ParameterValue=$AppUtilityBucket \
    ParameterKey=AwsRegion,ParameterValue=$AppRegion \
    ParameterKey=AwsAccountId,ParameterValue=$AppAccountId \
    ParameterKey=AppHostedZoneId,ParameterValue=$AppHostedZoneId \
    ParameterKey=GithubUser,ParameterValue=skmgoldin \
    ParameterKey=GithubRepoName,ParameterValue='hidden.computer' \
    ParameterKey=GithubRepoBranch,ParameterValue=$HIDDEN_ENV \
    ParameterKey=GithubToken,ParameterValue=$GITHUB_TOKEN


