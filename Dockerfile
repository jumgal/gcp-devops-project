# Use the official Python base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip3 install -r requirements.txt

# Copy the Flask application code to the working directory
COPY . .

# Run the Flask application
CMD ["python3", "-m", "flask", "run","--host=0.0.0.0"]