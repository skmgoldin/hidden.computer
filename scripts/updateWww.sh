#!/bin/bash

. ./scripts/setEnv.sh
if [ $? -gt 0 ]
then
  exit 1
fi

./scripts/publishInfraTemplates.sh

AppName=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $APP_NAME:AppName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppUtilityBucket=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $APP_NAME:ApplicationUtilityBucketName \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppRegion=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $APP_NAME:AwsRegion \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppAccountId=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $APP_NAME:AwsAccountId \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')
AppHostedZoneId=$(aws cloudformation list-exports | \
  jq -cj --arg searchValue $APP_NAME:HostedZoneId \
    '.[] | .[] | select(contains({Name: $searchValue})) | .Value')

aws cloudformation update-stack \
  --stack-name $BUILD_STACK_NAME \
  --template-body file://infra/$SERVICE_NAME/build/Build.yaml \
  --capabilities CAPABILITY_IAM \
  --parameters \
    ParameterKey=AppName,ParameterValue=$AppName \
    ParameterKey=ServiceName,ParameterValue=$SERVICE_NAME \
    ParameterKey=ServiceEnv,ParameterValue=$ENV \
    ParameterKey=ServiceStackName,ParameterValue=$SERVICE_STACK_NAME \
    ParameterKey=UtilityBucket,ParameterValue=$AppUtilityBucket \
    ParameterKey=AwsRegion,ParameterValue=$AppRegion \
    ParameterKey=AwsAccountId,ParameterValue=$AppAccountId \
    ParameterKey=AppHostedZoneId,ParameterValue=$AppHostedZoneId \
    ParameterKey=GithubUser,ParameterValue=skmgoldin \
    ParameterKey=GithubRepoName,ParameterValue='hidden.computer' \
    ParameterKey=GithubRepoBranch,ParameterValue=$ENV \
    ParameterKey=GithubToken,ParameterValue=$WWW_HIDDEN_COMPUTER_GITHUB_PUBLIC_REPO


