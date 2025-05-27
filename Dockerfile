# Use official Python image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY app.py .

# Install dependencies
RUN pip install flask

# Run the app
CMD ["python", "app.py"]
