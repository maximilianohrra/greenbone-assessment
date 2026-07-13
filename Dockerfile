FROM alpine:3.20

WORKDIR /app

COPY sample.txt /app/sample.txt

CMD ["cat", "/app/sample.txt"]
