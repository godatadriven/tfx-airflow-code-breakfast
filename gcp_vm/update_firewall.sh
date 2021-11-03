#!/usr/bin/env bash
# Create firewall rules, delete if previously existed

vm=$1
tag=$vm
uip=$2

gcloud compute firewall-rules delete $tag --quiet
gcloud compute firewall-rules create $tag --source-ranges $uip --target-tags $tag --allow tcp:80,tcp:8181,tcp:8080,tcp:8888
gcloud compute instances add-tags $vm --tags $tag
