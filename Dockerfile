FROM python:3-alpine

WORKDIR /project

RUN pip install django

ADD assets /assets

ADD bootstrap.sh /bootstrap.sh
RUN chmod 755 /bootstrap.sh

ENTRYPOINT [ "/bootstrap.sh" ]