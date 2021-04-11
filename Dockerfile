FROM gcr.io/distroless/cc:latest

ADD ./hugo /bin/hugo

WORKDIR /app

ENTRYPOINT ["/bin/hugo"]
