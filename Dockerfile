FROM python:3.7-alpine


MAINTAINER Keshav R Karanth



ENV PYTHONUNBUFFRED 1

COPY ./requriments.txt /requriments.txt
RUN pip install -r /requriments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user