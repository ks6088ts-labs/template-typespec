.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help

.PHONY: install-deps-dev
install-deps-dev: ## install dependencies for development
	@which kiota || echo "kiota is not installed. Please install it from https://aka.ms/kiota/docs"
	npm install

.PHONY: build
build: ## build applications
	npm run build

.PHONY: ci-test
ci-test: install-deps-dev build ## run CI test

# ---
# kiota
# ---
LANGUAGE ?= typescript

.PHONY: kiota-generate
kiota-generate: ## generate TypeSpec client code using Kiota
	kiota generate \
		--openapi ./outputs/schema/openapi.yaml \
		--language $(LANGUAGE) \
		--output ./outputs/kiota/$(LANGUAGE) \
		--log-level None \
