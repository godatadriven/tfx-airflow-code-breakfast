#!/usr/bin/env bash
# Create disk from snapshot

disk=$1
snapshot=tfx-2

gcloud beta compute disks create $disk --project=spark-optimization \
  --type=pd-ssd --size=80GB --zone=europe-west1-b \
  --source-snapshot=$snapshot