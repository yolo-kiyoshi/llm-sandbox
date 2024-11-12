FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

EXPOSE 8000

COPY poetry.lock pyproject.toml ./

RUN pip install poetry

RUN poetry config virtualenvs.create false \
  && poetry install
