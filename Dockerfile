FROM lsiobase/alpine.python:3.7

# set python to use utf-8 rather than ascii.
ENV PYTHONIOENCODING="UTF-8"

VOLUME /tv
VOLUME /movies

RUN apk add --update git py-pip && \
    git clone https://github.com/morpheus65535/bazarr.git /bazarr

VOLUME /bazarr/data

EXPOSE 6767

COPY root/ /
CMD ["python", "/bazarr/bazarr.py"]
