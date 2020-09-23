FROM python:3

WORKDIR /project

COPY assets /assets

COPY bootstrap.sh /bootstrap.sh
RUN chmod 755 /bootstrap.sh

ENTRYPOINT [ "/bootstrap.sh" ]
