#!/usr/bin/env bash

aws ec2 create-key-pair \
--key-name "bcitkey" \
--key-type ed25519 \
--key-format pem \
--tag-specifications 'ResourceType=key-pair,Tags=[{Key=project,Value=lab3}]' \
--output text \
--query "KeyMaterial" > ~/.aws/bcitkey.pem


