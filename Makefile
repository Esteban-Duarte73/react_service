start-development:
	# set env
	cd docker/development/ && cp -f development.env .env
	# start
	if [ ! -d "services/react_ms/node_modules" ]; then \
        cd docker/development/ && docker-compose build; \
		docker run --rm -v $(PWD)/services/react_ms:/home/app/web react-dev sh -c "npm install"; \
    fi
	cd docker/development/ && docker-compose up -d

build-development:
	# build
	cd docker/development/ && docker-compose build

stop-development:
	cd docker/development/ && docker-compose stop

create-network:
	docker network create react
