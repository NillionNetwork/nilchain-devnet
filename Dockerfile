FROM ghcr.io/nillionnetwork/nilchaind:feat-add-arm64-docker-builds

WORKDIR /opt/nilchain

COPY config config
COPY data data

EXPOSE 26648 26649 26650

ENTRYPOINT ["nilchaind", "--home", "/opt/nilchain"]
CMD ["start"]
