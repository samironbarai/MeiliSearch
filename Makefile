all:
	cargo build
	docker build -t marinpostma/meilisearch .
	docker-compose up --scale raft=4 -V
