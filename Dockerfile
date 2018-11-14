FROM golang:1.11
RUN go get github.com/golang/dep/cmd/dep \
   && go get github.com/alecthomas/gometalinter \
   && go get google.golang.org/grpc \
   && go get github.com/stormcat24/protodep \
   && go get github.com/golang/protobuf/protoc-gen-go \
   && go get github.com/grpc-ecosystem/go-grpc-middleware/validator \
   && go get github.com/mwitkow/go-proto-validators \
   && go get github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
   && apt-get update \
   && apt-get -y install mysql-client \
   && go get github.com/rubenv/sql-migrate/... \
   && apt install -y netcat \
   && apt-get install zip unzip \
   && curl -OL https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip \
   && unzip protoc-3.2.0-linux-x86_64.zip -d protoc3\
   && mv protoc3/bin/* /usr/local/bin/\
   && mv protoc3/include/* /usr/local/include/ \
   && apt-get install -y mysql-server
