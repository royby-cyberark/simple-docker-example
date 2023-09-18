# Use the official python image 3.11
FROM python:3.11

# Copy service code (service folder)
COPY service /service

# Install dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Run the application
CMD ["python", "/service/main.py"]
