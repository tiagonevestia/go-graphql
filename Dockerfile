FROM golang:1.15

WORKDIR /go/src

ENV PATH="/go/bin:${PATH}"
ENV GO111MODULE=on
ENV CGO_ENABLED=1

COPY . .

RUN GOOS=linux go build -ldflags="-s -w" -o graphql

ENTRYPOINT [ "./graphql" ]