FROM golang:1.18-alpine

ENV GO111MODULE=off

EXPOSE 8080

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o main .

CMD [ "/app/main" ]
