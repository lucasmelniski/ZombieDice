FROM python:3

WORKDIR .

COPY . .

USER root

RUN apt-get update

RUN apt-get install python3 -y

RUN echo "print('hello world')" > hello.py

CMD python3 hello.py
