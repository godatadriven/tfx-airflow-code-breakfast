#!/usr/bin/env bash
# Delete firewall rules

gcloud compute firewall-rules list 2>/dev/null |\
    cut -d' ' -f1 |\
    egrep -e "^tfx-" |\
    xargs gcloud compute firewall-rules delete --quiet