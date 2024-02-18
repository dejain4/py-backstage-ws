# Use a minimal Python image
FROM python:3.9-slim

# Create a working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the entire application directory
COPY src .

# Expose the port where the application runs
EXPOSE 5000

# Set FLASK_APP environment variable
ENV FLASK_APP=app.py

# Start the application
CMD ["flask", "run", "--host", "0.0.0.0"]
