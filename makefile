build-docker:
	docker build -t getting-started .

run-docker:
	docker run -dp 3000:3000 --name start getting-started

it-docker:
	make build
	make run

stop-docker:
	docker stop start
	docker rm start

prune-docker:
	docker image prune -f

clean-volume:
	docker volume prune -f

clean-docker:
	make stop
	make prune

run:
	docker compose up -d

stop:
	docker compose stop

clean:
	docker compose rm -f

ini:
	echo "Remove folder init"
	rm -rf db/init
	echo "Create a folder init"
	mkdir db/init
	echo "Copy all migrations into one file"
	cat db/migrations/*.sql > db/init/init.sql 
	echo "Copy data into one file"
	cat db/data/*.sql >> db/init/init.sql