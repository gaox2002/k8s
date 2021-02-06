FROM python:3.8

RUN pip install poetry

EXPOSE 80

COPY ./app /app
COPY ./pyproject.toml /app

WORKDIR /app
RUN poetry install

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
