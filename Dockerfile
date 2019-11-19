FROM golang:1.11
RUN apt-get update --fix-missing && apt-get install -y --fix-missing libnghttp2-14=1.36.0-2
WORKDIR /go/src/github.com/multi-stage3
RUN go get -d -v golang.org/x/net/html  
COPY app.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .


FROM alpine:latest  
RUN apk --no-cache add ca-certificates
RUN apk add apache2
RUN apk add apache2>=2.4.41

RUN apk add --update py-pip
RUN pip install django==1.2 certifi==2019.3.9 chardet==3.0.4 idna==2.8

WORKDIR /root/
CMD ["/bin/ash"]

