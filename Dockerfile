# # Use the official Python image from the Docker Hub
# FROM python:3.10-slim

# # Set environment variables
# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PYTHONUNBUFFERED=1

# # Set the working directory in the container
# WORKDIR /app

# # Copy the requirements.txt file into the container
# COPY blog_project/requirements.txt /app/
# # Install the dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # # Copy the rest of the application code into the container
# # COPY blog_project /app/blog-project
#  COPY . /app/

# # Debugging: List files in /app to verify copy
# RUN ls -la /app

# # Expose the port that the application will run on
# EXPOSE 8000

# # Command to run the Django application
# CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]


FROM python:3.10

WORKDIR /app

COPY blog_project/requirements.txt  /app/
RUN pip install -r requirements.txt

COPY . /app/

CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]
