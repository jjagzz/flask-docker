FROM python:3.12-slim

WORKDIR /app

# Copy only requirements first so this layer is cached
COPY requirements.txt .

# --no-cache-dir keeps pip's download cache out of the image
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code last (changes most often)
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
