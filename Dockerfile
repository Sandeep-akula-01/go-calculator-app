FROM amazonlinux:latest
RUN yum update -y && yum install -y go
ENV GO111MODULE=off
WORKDIR /opt/app
COPY calculator.go .
RUN go build calculator.go
CMD ["/opt/app/calculator"]
