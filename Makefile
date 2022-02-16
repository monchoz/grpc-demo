client:
	docker build . -t grpc_demo_client -f grpc_demo/client/Dockerfile
	docker run grpc_demo_client
server:
	docker build . -t grpc_demo_server -f grpc_demo/server/Dockerfile
	@echo Running server. Press CTRL-C to exit.
	docker run grpc_demo_server -p 50051:50051