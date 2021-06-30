FROM python:3.9.6-slim-buster

RUN apt-get update; apt-get install -y build-essential libpq-dev;
RUN pip3 install selenium==4.0.0.b4 lxml==4.6.3 sqlalchemy==1.4.19 psycopg2==2.9.1 wget==3.2 boto3==1.17.101 pandas==1.2.5 numpy==1.21.0
CMD python3
