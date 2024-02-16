# Use an official Python runtime as a parent image
FROM python:latest

# Set labels
LABEL maintainer="Lahiru De Silva" \
      version="1.0" \
      description="Flask starting application inside a Docker container"

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

# Update package list and install necessary dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

# Install Flask and Requests using pip3
RUN pip3 install flask requests

# Make port 5000 available to the world outside this container
EXPOSE 5000
