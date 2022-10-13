FROM python:3-alpine

RUN apk update && apk add wget && apk add curl && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./hello.py .

CMD [ "python", "./hello.py" ]