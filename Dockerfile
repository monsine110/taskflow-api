# Use an official lightweight Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (for efficient caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (adjust if needed)
EXPOSE 8000

# Command to run your API (FastAPI example with uvicorn)
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "4000"]
