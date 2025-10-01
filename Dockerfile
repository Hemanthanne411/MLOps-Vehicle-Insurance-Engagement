# Official Python 3.10 image from Docker Hub
FROM python:3.10-slim-buster

# Setting the working directory
WORKDIR /app

# Copy application code
COPY . /app

# Installing the dependencies
RUN pip install -r requirements.txt

# Exposing the port FastAPI will run on

EXPOSE 4044

# Command to run the FastAPI app
CMD ["python3", "app.py"]