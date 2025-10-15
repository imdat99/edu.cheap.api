FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -ldflags="-s -w" -o main ./cmd/server
FROM scratch

COPY --from=builder /app/main /main

EXPOSE 12345
ENTRYPOINT ["/main"]