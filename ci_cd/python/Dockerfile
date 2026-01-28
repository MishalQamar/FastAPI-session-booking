FROM python:3.11-slim

# Create a non-root user called "github"
RUN useradd -m github
USER github
WORKDIR /home/github

# Install uv
RUN pip install --no-cache-dir uv

# Make sure the virtual environment is on PATH
ENV PATH="/home/github/.venv/bin:$PATH"
