FROM python:3.11-slim

WORKDIR /app

# Upgrade pip to avoid old dependency resolution issues
RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

ENV HOST 0.0.0.0

CMD ["fastapi","run","src","--port","8000","--host","0.0.0.0"]
