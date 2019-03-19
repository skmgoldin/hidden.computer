#!/bin/bash

# The AppName exported by ensusmanos-core
export HIDDEN_APP_NAME=hidden

# The name of the subdomain to run the www service under
export HIDDEN_WWW_SERVICE_NAME=www

# Name of the Github branch for the CodePipeline to watch. Change this and re-run the
# deployBuildInfra script to create a pipeline on a new branch.
export HIDDEN_ENV=$(git branch | grep \* | sed 's/* //')

# The name of the CloudFormation stack defining the build pipeline and ECR
export HIDDEN_WWW_BUILD_STACK_NAME=$HIDDEN_APP_NAME-$HIDDEN_WWW_SERVICE_NAME-build-$HIDDEN_ENV

# The cloudformation stack name for the WWW service
export HIDDEN_WWW_SERVICE_STACK_NAME=$HIDDEN_APP_NAME-$HIDDEN_WWW_SERVICE_NAME-service-$HIDDEN_ENV

