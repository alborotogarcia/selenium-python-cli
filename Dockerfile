FROM python:3.9.7-slim-buster

RUN apt-get update; apt-get install -y build-essential libpq-dev git; rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir selenium==4.0.0.b4 lxml==4.6.3 sqlalchemy==1.4.19 psycopg2==2.9.1 wget==3.2 boto3==1.17.101 pandas==1.3.0 numpy==1.21.0 dask==2021.6.2 git+https://github.com/psycopg/psycopg.git#subdirectory=psycopg fastparquet==0.6.3
CMD python3
