# lightweight Python image
FROM python:3.9-slim

# Set the working directory 
WORKDIR /app

# Copy the code to the container
COPY . /app

# Install dependencies 
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app 
EXPOSE 9001

# Command to run the script
CMD ["python", "cron_task.py"]

