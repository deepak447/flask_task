# Use a slim Python 3.10.13 image as a base
FROM python:3.10.14-slim-bullseye

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port your application will listen on
EXPOSE 7755

# Command to run the Gunicorn server
CMD ["./run.sh"]
