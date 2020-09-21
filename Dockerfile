FROM python:3-alpine

WORKDIR /project

RUN pip install django==3.1

COPY assets /assets

COPY bootstrap.sh /bootstrap.sh
RUN chmod 755 /bootstrap.sh

ENTRYPOINT [ "/bootstrap.sh" ]
