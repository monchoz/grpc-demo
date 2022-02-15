server:
	docker build . -t grpc_demo
	@echo Running grpc_demo. Press CTRL-C to exit.
	docker run grpc_demo