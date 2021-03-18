include ./env/default.env
export

dc=docker-compose
fn=docker-compose.yml

dul: down up log

up:
	$(dc) -f $(fn) up -d
down:
	$(dc) -f $(fn) down -v
restart:
	$(dc) -f $(fn) restart
log:
	$(dc) -f $(fn) logs -f
