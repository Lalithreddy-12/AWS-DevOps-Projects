#!/bin/bash

###################################
#Author: Lalith
#DATE: 18-12-2025
#
#Version: V1
#This script will report AWS resource usage
###################################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 buckets
echo "Print s3 buckets"
aws s3 ls

#list ec2 instances
echo "Print ec2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId[]'

#list lambda functions
echo "Print Lambda functions"
aws lambda list-functions

#list IAM Users
echo "Print IAM USers"
aws iam list-users
