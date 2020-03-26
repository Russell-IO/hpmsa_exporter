FROM alpine:latest
MAINTAINER Russell Clare <Russell@Clare.io>

RUN apk add --no-cache python3 py3-lxml py3-prometheus-client py3-requests
COPY msa_exporter.py /bin/msa_exporter
RUN chmod +x /bin/msa_exporter

EXPOSE 8000
CMD /bin/msa_exporter "$HOST" "$LOGIN" "$PASSWORD"
