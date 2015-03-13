FROM ubuntu:14.04

ENV UPDATED_AT 2015-03-13

RUN apt-get update

RUN apt-get install -y \
    curl \
    gcc \
    make

RUN curl -L http://cpanmin.us | perl - App::cpanminus

RUN cpanm HTML::Strip
RUN cpanm File::Slurp
RUN cpanm Text::Trim

RUN mkdir /data

COPY app/ /app/

CMD perl /app/hpmor-dl
