FROM python:3-slim

WORKDIR /app
COPY grpc_demo /app
COPY protos /app/protos
COPY poetry.lock pyproject.toml entrypoint.sh /app/

RUN python -m pip install poetry
RUN poetry install
RUN poetry run python -m grpc_tools.protoc -I/app/protos --python_out=. --grpc_python_out=. helloworld.proto

ENTRYPOINT ["poetry", "run", "python", "/app/greeter_server.py"]
