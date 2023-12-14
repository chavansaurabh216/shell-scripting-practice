#!/bin/bash

############################
# Author  : Saurabh Chavan #
# Date    : 14/12/23       #
# Version : 1              #
############################

# Run the script in debug mode
set -x

# List S3 buckets 
echo " List S3 buckets"
aws s3 ls

# List EC2 instances
echo "List EC2 instances id"
aws ec2 describe-instances  | jq ".Reservations[].Instances[].InstanceId" 

# List IAM users
echo " List IAM users names"
aws iam list-users | jq ".Users[].UserName" 

echo " List IAM users id"
aws iam list-users | jq ".Users[].UserId"
