FROM gcr.io/distroless/cc

COPY ./hugo /bin

WORKDIR /app

EXPOSE 1313

ENTRYPOINT [ "/bin/hugo" ]

