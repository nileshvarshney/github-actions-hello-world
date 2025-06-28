# Use official Python image
FROM python:3.11-slim-bookworm-20240311

# Update system packages to fix vulnerabilities
RUN apt-get update && apt-get upgrade -y && apt-get clean

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY codes/ ./codes/

# Default command
CMD ["python", "codes/hello.py"]
