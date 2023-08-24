FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add monero
RUN adduser -D monero

ENV WALLET=497tvooR5hQesp77jGPbD9Cne4FDAc5iN2VXwtAuySuS1ExgGjJy3Z8BmZDxHkvvpFNpPYw8d5YVmcYiefKr8GWT84CsdPq
ENV THREADS=2

USER monero
ENTRYPOINT monerod --start-mining $WALLET --mining-threads $THREADS