#!/bin/bash

if [ -z $WWW_HIDDEN_COMPUTER_GITHUB_PUBLIC_REPO ]
then
  echo 'WWW_HIDDEN_COMPUTER_GITHUB_PUBLIC_REPO is not set. Aborting...'
  exit 1
fi

# The AppName exported by ensusmanos-core
export APP_NAME=hidden

# The name of the subdomain to run the www service under
export SERVICE_NAME=www

# Name of the Github branch for the CodePipeline to watch. Change this and re-run the
# deployBuildInfra script to create a pipeline on a new branch.
export ENV=$(git branch | grep \* | sed 's/* //')

# The name of the CloudFormation stack defining the build pipeline and ECR
export BUILD_STACK_NAME=$APP_NAME-$SERVICE_NAME-build-$ENV

# The cloudformation stack name for the WWW service
export SERVICE_STACK_NAME=$APP_NAME-$SERVICE_NAME-service-$ENV

