FROM python:3-alpine

RUN apk add --no-cache bash postgresql postgresql-client postgresql-dev gcc python3-dev musl-dev libressl-dev libffi-dev git jpeg-dev zlib-dev alpine-sdk

ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

COPY ./docker-entrypoint.sh /
RUN chmod 755 /docker-entrypoint.sh
CMD ["/docker-entrypoint.sh"]