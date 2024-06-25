FROM python:3.10-slim

# Set environment variables
ENV POETRY_VERSION=1.11.11 \
    POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_CREATE=false \
    POETRY_NO_INTERACTION=1

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && curl -sSL https://install.python-poetry.org | python3 - \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Add Poetry to PATH
ENV PATH="$POETRY_HOME/bin:$PATH"

# Copy project files
WORKDIR /app
COPY . /app

# Install project dependencies
RUN poetry install --no-root

# Set the entrypoint to the CLI
ENTRYPOINT ["pilot"]

# Default command to display help
CMD ["--help"]