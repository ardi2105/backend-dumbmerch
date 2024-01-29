FROM golang:alpine

WORKDIR apps

COPY . .

RUN go mod download

RUN go get

RUN go build -o my-golang-app

EXPOSE 5000

CMD ["./my-golang-app"]
