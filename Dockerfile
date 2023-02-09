FROM python:3.11.2-slim-bullseye

RUN apt-get update; apt-get install -y build-essential libpq-dev git librdkafka-dev; rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir selenium==4.1.0 lxml==4.6.4 sqlalchemy==1.4.25 psycopg2==2.9.2 wget==3.2 boto3==1.20.14 pandas==1.3.4 numpy==1.21.4 dask==2021.11.2 git+https://github.com/psycopg/psycopg.git#subdirectory=psycopg fastparquet==0.7.2 pandasticsearch==0.6.0 git+https://github.com/opensearch-project/opensearch-py beautifulsoup4==4.10.0 joblib==1.1.0 requests==2.26.0 confluent_kafka==1.7.0 simplejson==3.17.6 pandavro==1.6.0 websockets==10.1
COPY ./ws /usr/local/bin
CMD python3
