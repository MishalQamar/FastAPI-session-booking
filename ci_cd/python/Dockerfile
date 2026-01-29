FROM python:3.11-slim

# Install uv while root so it is on PATH for all users
RUN pip install --no-cache-dir uv

# Create a non-root user called "github"
RUN useradd -m github
USER github
WORKDIR /home/github

# Virtual env will be created in project dir; ensure it's on PATH when present
ENV PATH="/app/.venv/bin:$PATH"
