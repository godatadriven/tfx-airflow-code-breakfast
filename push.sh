#!/usr/bin/env bash
#
# Push recently built images to docker registry.
#

registry="europe-west1-docker.pkg.dev/tfx-training-329508/tfx"
images=("tfx-cb-jupyter" "tfx-cb-airflow")

for image in ${images[@]}; do
  echo "--- pushing $image ---"
	docker tag $image:0.0.1 $registry/$image:latest
  docker push $registry/$image:latest
done
