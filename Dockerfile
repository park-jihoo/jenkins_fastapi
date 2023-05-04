FROM continuumio/miniconda3:latest

WORKDIR /app

COPY . /app

RUN conda env create -f environment.yml

EXPOSE 5000

CMD ["conda", "run", "-n", "flask", "python", "app.py"]