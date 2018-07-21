FROM python:3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN pip install --no-cache-dir uwsgi flask

COPY app.py uwsgi.ini /usr/src/app/

CMD ["uwsgi", "uwsgi.ini"]
