start-development:
	# set env
	cd docker/development/ && cp -f development.env .env
	# start
	cd docker/development/ && docker-compose up -d

stop-development:
	cd docker/development/ && docker-compose stop

create-network:
	docker network create react