# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the pyproject.toml and poetry.lock files to the container
COPY pyproject.toml poetry.lock* /app/

# Install Poetry
RUN pip install poetry

# Install dependencies
RUN poetry install --no-root

# Copy the rest of the application code to the container
COPY . /app

# Set the entrypoint to the CLI script
ENTRYPOINT ["poetry", "run", "pilot"]

# Default command to run the CLI
CMD ["--help"]