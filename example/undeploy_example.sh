#!/usr/bin/env bash
set -e

source vars.sh

terraform plan \
    -lock=false \
    -input=false \
    -out=tf.plan \
    -destroy

terraform apply \
    -input=false \
    -auto-approve=true \
    -lock=true \
    -destroy \
    tf.plan 
    
