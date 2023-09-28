.PHONY: db
db:
	@docker compose up db

.PHONY: prod
prod:
	@docker compose up
