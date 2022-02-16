FROM python:3-slim

WORKDIR /app
COPY pyproject.toml /app/

RUN pip install poetry
RUN poetry install