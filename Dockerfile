FROM python:3.10.0-slim-bullseye

RUN apt-get update; apt-get install -y build-essential libpq-dev git; rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir selenium==4.0.0 lxml==4.6.3 sqlalchemy==1.4.25 psycopg2==2.9.1 wget==3.2 boto3==1.18.64 pandas==1.3.4 numpy==1.21.2 dask==2021.9.1 git+https://github.com/psycopg/psycopg.git#subdirectory=psycopg fastparquet==0.7.1 pandasticsearch==0.6.0 git+https://github.com/opensearch-project/opensearch-py beautifulsoup4==4.10.0 joblib==1.1.0 requests==2.26.0
CMD python3
