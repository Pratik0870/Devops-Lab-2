FROM python:3.11

LABEL version="1.0"
LABEL description="My Docker Image"

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

CMD ["python", "app.py"]
