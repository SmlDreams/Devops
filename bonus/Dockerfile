FROM golang:alpine AS build
WORKDIR /app
COPY main.go .
RUN go build -ldflags="-s -w" -o app main.go

FROM scratch
COPY --from=build /app/app /app
CMD ["/app"]
