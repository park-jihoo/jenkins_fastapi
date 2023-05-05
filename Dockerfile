FROM continuumio/miniconda3:latest

WORKDIR /app

COPY . /app

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 3000

CMD ["python", "app.py"]