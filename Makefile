build:
	docker compose -f local.yml up --build -d --remove-orphans

connect_db:
	docker compose -f local.yml exec postgres psql -U eyram -d nexgen
down:
	docker compose -f local.yml down

remove_c_v:
	docker compose -f local.yml down -v

up:
	docker compose -f local.yml up -d

migrations:
	docker compose -f local.yml exec -it api alembic revision --autogenerate -m "$(name)"

migrate:
	docker compose -f local.yml exec -it api alembic upgrade head

history:
	docker compose -f local.yml exec -it api alembic history

current_migration:
	docker compose -f local.yml exec -it api alembic current

downgrade:
	docker compose -f local.yml exec -it api alembic downgrade $(version)

inspect_nw:
	docker network inspect nexgen_local_nw

