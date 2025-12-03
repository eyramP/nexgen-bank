build:
	docker compose -f local.yml up --build -d --remove-orphans
connect_to_db:
	docker compose -f local.yml exec postgres psql -U eyram -d nexgen 