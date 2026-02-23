# Serve US Snap

This is a simple Streamlit app that demonstrates CI/CD.

## Prerequisites

- Python 3.13
- uv

## Installation

```bash
uv sync
```

## Usage

```bash
uv run streamlit run app/main.py
```

```docker
docker build -t serve-us-snap .
docker run -p 8000:8000 serve-us-snap
```

## GitHub Actions

This project uses GitHub Actions to automatically build and deploy the app to Docker Hub.
