build:
	docker build -t getting-started .

run:
	docker run -dp 3000:3000 --name start getting-started

it:
	make build
	make run

stop:
	docker stop start
	docker rm start

prune:
	docker image prune -f

clean:
	make stop
	make prune