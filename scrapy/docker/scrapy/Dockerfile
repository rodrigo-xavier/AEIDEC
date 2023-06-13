# Use the official Python 3.9.16-alpine3.17 image as the base image
FROM python:3.11.2-alpine3.17

ADD docker/scrapy/entrypoint.sh /
COPY ./docker/scrapy/requirements.txt /

# Install the necessary dependencies and update requirements
RUN apk update && apk add --no-cache build-base && \
    pip install --upgrade pip

ENTRYPOINT ["/entrypoint.sh"]
WORKDIR /code
