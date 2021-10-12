FROM gcr.io/distroless/static:nonroot

ADD ./hugo /bin

WORKDIR /app

ENTRYPOINT [ "/bin/hugo" ]

