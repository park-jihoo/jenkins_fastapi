FROM python:3.9-alpine

WORKDIR .

# Path: /app/requirements.txt
COPY requirements.txt .

RUN pip install -r requirements.txt

# Path: /app
COPY . .

# fastAPI
EXPOSE 8000

CMD ["python", "app.py"]