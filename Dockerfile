FROM python:3.13-slim

# Set working directory inside container
WORKDIR /world-clock-app

# Copy project files
COPY world_clock.py requirements.txt /world-clock-app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "world_clock.py"]

