FROM --platform=linux/amd64 python:3.12-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

EXPOSE 8000

COPY poetry.lock pyproject.toml ./

RUN pip install poetry \
  && poetry config virtualenvs.create false \
  && poetry install

RUN python -m spacy download ja_core_news_sm
