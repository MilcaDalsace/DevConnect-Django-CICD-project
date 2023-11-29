# Set the base builder image
FROM python:3.12.0-slim

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install the required dependencies
WORKDIR /app

# Copy the application code
COPY . /app

RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8000

# Set the command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]