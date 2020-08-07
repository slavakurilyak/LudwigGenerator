#!/bin/bash
echo "LudwigGenerator | Started"

echo "LudwigGenerator | Creating Directory: awesome-mountain-f384f"
mkdir awesome-mountain-f384f
cd awesome-mountain-f384f
echo "LudwigGenerator | Created Directory: awesome-mountain-f384f"

echo "LudwigGenerator | Creating Serverless Framework App: Python 3 running on AWS"
serverless create --template aws-python3
echo "LudwigGenerator | Created Serverless Framework App"

echo "LudwigGenerator | Updating serverless.yml for API Gateway: GET /hello"
cd ..
touch serverless.yaml
yq w -s update_instructions.yaml awesome-mountain-f384f/serverless.yml >> serverless.yaml
cat serverless.yaml > awesome-mountain-f384f/serverless.yml
rm serverless.yaml
echo "LudwigGenerator | Updated serverless.yml for API Gateway"

echo "LudwigGenerator | Deploying Model"
cd awesome-mountain-f384f
serverless deploy
echo "LudwigGenerator | Deployed Model"

echo "LudwigGenerator | Finished"