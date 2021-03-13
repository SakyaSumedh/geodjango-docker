FROM python:3.9

ENV PYTHONUNBUFFERED=1

RUN apt-get update &&\
    apt-get install -y binutils libproj-dev gdal-bin python-gdal python3-gdal

WORKDIR /site

RUN pip install --upgrade pip

ADD requirements.txt /site/

RUN pip install -r /site/requirements.txt

COPY ./ /site