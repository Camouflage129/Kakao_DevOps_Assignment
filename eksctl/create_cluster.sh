#!/bin/bash

source variable.sh

eksctl create cluster \
--name SPDJ-TEST-EKS \
--region ap-northeast-2 \
--vpc-private-subnets=${PRIVATE_SUBNET_A_ID},${PRIVATE_SUBNET_C_ID} \
--node-private-networking \
--vpc-public-subnets=${PUBLIC_SUBNET_A_ID},${PUBLIC_SUBNET_C_ID} \
--without-nodegroup
