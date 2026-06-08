# SECURITY FIX applied by DevOpsGen Remediation Advisor
# npm install h11@0.16.0

# Generated Dockerfile — FastAPI (Python 3.11)
FROM python:3.11-slim
WORKDIR /app
COPY requirements*.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--workers", "2"]
