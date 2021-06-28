#!/bin/bash

echo  "<Start load of variables>"

ARM_CLIENT_ID="xxxx"
ARM_CLIENT_SECRET="yyyyy"
ARM_SUBSCRIPTION_ID="zzzz"
ARM_TENANT_ID="www"

export ARM_CLIENT_ID="${ARM_CLIENT_ID}"
export TF_VAR_client_id="${ARM_CLIENT_ID}"
export ARM_CLIENT_SECRET="${ARM_CLIENT_SECRET}"
export TF_VAR_client_password="${ARM_CLIENT_SECRET}"
export ARM_SUBSCRIPTION_ID="${ARM_SUBSCRIPTION_ID}"
export ARM_TENANT_ID="${ARM_TENANT_ID}"

echo  "</Start load of variables>"
