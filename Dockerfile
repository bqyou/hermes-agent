FROM python:3.12-slim

# Install system dependencies (git is often needed for Hermes dependencies)
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the entire project
COPY . .

# Install Hermes Agent (this runs the official install script)
RUN curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# Railway start command - this launches the persistent gateway
CMD ["hermes", "gateway", "start"]
