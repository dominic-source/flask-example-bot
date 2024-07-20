# Use the latest official Python image.
FROM python:latest


# create the working directory
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install requirements
RUN pip install -r requirements.txt

# Copy all files to the current working directory
COPY . .


# expose port
EXPOSE 5000

ENV FLASK_APP=main.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
