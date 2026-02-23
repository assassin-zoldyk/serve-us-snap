FROM python:3.13-slim

WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN pip install --no-cache-dir uv

# Copy dependency files
COPY pyproject.toml uv.lock ./

# Install dependencies (in virtualenv)
RUN uv sync --frozen --no-dev

# Copy app source
COPY . .

EXPOSE 8501

# Run Streamlit from UV virtualenv
CMD ["/root/.uv/venv/bin/streamlit", "run", "app/main.py", "--server.port=8501", "--server.address=0.0.0.0"]