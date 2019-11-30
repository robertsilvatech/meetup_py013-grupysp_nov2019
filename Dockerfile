FROM alpine

EXPOSE 8000

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN apk add --no-cache python3 && pip3 install -r /app/requirements.txt

COPY . /app/

CMD python3 manage.py runserver 0.0.0.0:8000

