#!/bin/bash
docker run --rm -it -v `pwd`/../.private/aws:/root/.aws -v `pwd`:/app -w /app awstests_aws bash

# aws s3 cp lamp.json s3://aws.akiraho.com/cloudformation/

# aws cloudformation create-stack --stack-name lamp01 --template-body file://lamp.json \

# aws cloudformation update-stack --stack-name lamp01 --template-body file://lamp.json \
# --parameters \
# ParameterKey=OperatorEmail,ParameterValue=akiraho@gmail.com \
# ParameterKey=AutoScalingMinSize,ParameterValue=2 \
# ParameterKey=AutoScalingMaxSize,ParameterValue=4 \
# ParameterKey=AutoScalingDesiredCapacity,ParameterValue=2 \

# aws cloudformation create-stack --stack-name myteststack --template-body file://sampletemplate.json --parameters ParameterKey=KeyPairName,ParameterValue=TestKey ParameterKey=SubnetIDs,ParameterValue=SubnetID1\\,SubnetID2
