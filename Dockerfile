FROM python:3.9.7-slim-buster

RUN apt-get update; apt-get install -y build-essential libpq-dev git; rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir selenium==4.0.0.rc1 lxml==4.6.3 sqlalchemy==1.4.23 psycopg2==2.9.1 wget==3.2 boto3==1.18.36 pandas==1.3.2 numpy==1.21.2 dask==2021.9.0 git+https://github.com/psycopg/psycopg.git#subdirectory=psycopg fastparquet==0.7.1 pandasticsearch==0.6.0 git+https://github.com/opensearch-project/opensearch-py beautifulsoup4==4.9.3
CMD python3
