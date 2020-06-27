#!/bin/bash

eksctl utils update-legacy-subnet-settings --cluster SPDJ-TEST-EKS
eksctl create nodegroup --config-file=./nodegroup.yaml
