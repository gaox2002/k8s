FROM python:3.8

RUN pip install fastapi uvicorn

EXPOSE 80

COPY ./app /app

WORKDIR /app

CMD ["python", "main.py"]
