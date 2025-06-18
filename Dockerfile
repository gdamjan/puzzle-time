FROM python:3.13-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:0.7.8 /uv /uvx /bin/

ENV PYTHONUNBUFFERED=1 \
    PATH="/app/.venv/bin:$PATH"

WORKDIR /app

COPY pyproject.toml uv.lock ./

RUN uv sync --locked

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
