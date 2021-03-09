FROM python:3.7

RUN apt-get update
RUN pip3 install --no-cache-dir flask

CMD [ "flask run --host=0.0.0.0 --port=80" ]
