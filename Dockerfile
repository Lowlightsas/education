# Pull official base Python Docker image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /code/

# Copy the Django project
COPY . /code/