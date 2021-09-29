.DEFAULT_GOAL := help

# From https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build: ## Build docker images
	docker build --tag tfx-cb-airflow:0.0.1 services/airflow
	docker build --tag tfx-cb-jupyter:0.0.1 services/jupyter

.PHONY: up
up: ## Bring Airflow up
	rm -rf tfx
	docker-compose up --build -d

.PHONY: down
down: ## Bring Airflow down
	docker-compose down -v
