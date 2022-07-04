FROM golang:1.17-alpine as builder

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /gleanews

FROM alpine:3.15
COPY --from=builder /gleanews /

EXPOSE 1323

CMD [ "/gleanews" ]
