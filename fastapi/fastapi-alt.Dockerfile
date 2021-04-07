FROM python:3.8

RUN pip install fastapi uvicorn

WORKDIR /app/

COPY /app/main.py .

EXPOSE 8000

CMD ["python", "main.py"]
