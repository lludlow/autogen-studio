FROM python:3.10-slim

# Copy application files and install dependencies
COPY . /app
RUN pip install --upgrade pip
WORKDIR /app
RUN pip install -r requirements.txt && pip install autogenstudio

# Set the path
ENV PATH="/home/app/.local/bin:${PATH}"

# set python path
ENV PYTHONPATH="/home/app/.local/bin:/app:${PYTHONPATH}"

# add autogenstudio to the PATH
ENV OPENAI_API_KEY="your-key-here"

RUN autogenstudio version

EXPOSE 8081

ENTRYPOINT [ "autogenstudio", "ui", "--host", "0.0.0.0", "--port", "8081"]