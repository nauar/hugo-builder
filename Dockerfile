FROM gcr.io/distroless/cc:nonroot

ADD ./hugo /bin

WORKDIR /app

ENTRYPOINT [ "/bin/hugo" ]

