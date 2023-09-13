#!/bin/bash

# This directory is where our local results are stored and it is generally named as `allure-results`
ALLURE_RESULTS_DIRECTORY='allure-results'

# This url is where the Allure container is deployed. Use `localhost` when allure server is running in local
ALLURE_SERVER='http://localhost:5050'

# Project ID according to existent projects in your Allure container - Check endpoint for project creation >> `[POST]/projects`
PROJECT_ID='default'
#PROJECT_ID='my-project-id'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
FILES_TO_SEND=$(ls -dp $DIR/$ALLURE_RESULTS_DIRECTORY/* | grep -v /$)
if [ -z "$FILES_TO_SEND" ]; then
  exit 1
fi

FILES=''
for FILE in $FILES_TO_SEND; do
  FILES+="-F files[]=@$FILE "
done

set -o xtrace
echo "------------------CLEAN-RESULTS------------------"
curl -X GET "$ALLURE_SERVER/allure-docker-service/clean-results?project_id=$PROJECT_ID"

echo "------------------SEND-RESULTS------------------"
curl -X POST "$ALLURE_SERVER/allure-docker-service/send-results?project_id=$PROJECT_ID" -H 'Content-Type: multipart/form-data' $FILES -ik