# File Structure
```text
.
├── cmd/
│   ├── server/
│   │   └── main.go
│   └── client/
│       └── main.go
├── internal/
│   ├── service/
│   │   └── myservice.go
│   ├── repository/
│   │   └── myrepository.go
│   └── util/
│       └── helpers.go
├── pkg/
│   └── api/
│       └── v1/
│           └── myservice.pb.go
│           └── myservice_grpc.pb.go
├── protos/
│   └── myservice/
│       └── myservice.proto
├── go.mod
├── go.sum
└── Makefile
```