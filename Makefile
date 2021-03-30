#
## Aliases
#
h: help

u: up
upd: up-daemon
s: stop
d: down
l: logs

#
## Rules
#

help:			### (Current) (Alias=h) See all available commands
	@fgrep -h "###" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/###//'

up:			### (Alias=u) Up docker containers
	@docker-compose up

up-daemon:		### (Alias=upd) Up docker containers as a daemon
	@docker-compose up -d

stop:			### (Alias=s) Stop docker containers
	@docker-compose stop

down:			### (Alias=d) Down docker containers
	@docker-compose down

logs:			### (Alias=l) Display docker containers logs
	@docker-compose logs -f

.PHONY: help up up-daemon stop down logs