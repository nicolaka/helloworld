FROM golang:1.13-alpine
WORKDIR /go/src/github.com/nico/app/
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build .

EXPOSE 80
ENTRYPOINT ["/go/src/github.com/nico/app/app"]
