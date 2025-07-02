# Use Python 3.10 image
FROM python:3.10-slim

# Add label for student and lab number
LABEL student="Amaan Patel"
LABEL lab="Lab 2"

# Build ARG for environment
ARG ENV=development
ENV ENV=$ENV

# Set working directory
WORKDIR /app

# Copy files and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Print environment when container starts
CMD echo "Starting in $ENV environment" && python main.py

# Expose the Flask port
EXPOSE 8000