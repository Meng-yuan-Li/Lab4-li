# Using the official Python image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire project code
COPY . .

# Run the application
CMD ["python", "main.py"]
