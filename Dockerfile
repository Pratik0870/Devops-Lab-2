FROM python:3.11

LABEL version="1.0"
LABEL description="My Docker Image"

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

EXPOSE 8000 

CMD ["python", "app.py"]
