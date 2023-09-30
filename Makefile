.PHONY: db
db:
	@docker compose up db

.PHONY: prod
prod:
	@docker compose up

.PHONY: build
build:
	@docker build -t "sotirismorf/aperta:$(jq -r '.version' package.json)" -t "sotirismorf/aperta:latest" .
