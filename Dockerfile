FROM golang:1.17-alpine
WORKDIR /usr/src/app
COPY . .
RUN go build
RUN rm -f *.go
RUN chmod +x proxy
EXPOSE 8080
ENTRYPOINT [ "./proxy" ] 
