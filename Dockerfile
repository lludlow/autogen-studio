# Use python 3.10 slim image as the base
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Create a new user and group 'autogen'
RUN groupadd -r autogen && \
    useradd -r -g autogen -d /app -s /bin/bash autogen

# Change ownership of the /app directory to autogen
RUN chown autogen:autogen /app

# Set the home directory for the autogen user
ENV HOME=/app

# Change to the autogen user
USER autogen

# Copy the requirements.txt file and install Python dependencies
COPY --chown=autogen:autogen requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8081

# Set the default command to run when starting the container
ENTRYPOINT ["autogenstudio", "ui", "--host", "0.0.0.0", "--port", "8081"]
