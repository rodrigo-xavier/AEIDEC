FROM python:latest

ADD entrypoint.sh /
COPY requirements.txt /

RUN apt update && pip install --upgrade pip && pip install -U jupyter-book

ENTRYPOINT ["/entrypoint.sh"]

RUN ["chmod", "+x", "/entrypoint.sh"]