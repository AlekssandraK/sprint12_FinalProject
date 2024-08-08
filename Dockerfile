FROM golang:1.22

WORKDIR /sprint12_FinalProject

COPY ..

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint12_FinalProject

CMD ["/sprint12_FinalProject"] 