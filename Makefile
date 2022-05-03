help:
	@echo Opciones:
	@echo -------------------
	@echo start / stop / restart
	@echo workspace
	@echo stats
	@echo clean
	@echo -------------------

_start-command:
	@docker-compose up -d --remove-orphans

start: _start-command _urls

stop:
	@docker-compose stop

restart: stop start

workspace:
	@docker-compose exec wordpress /bin/bash

stats:
	@docker stats

clean:
	@docker-compose down -v --remove-orphans

_urls:
	${info }
	@echo -------------------
	@echo [WordPress] https://wordpress.test
	@echo -------------------
