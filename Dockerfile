FROM        quay.io/prometheus/busybox:latest
MAINTAINER  RocDove <rocdove@sina.com>

COPY prometheus-webhook-dingtalk /bin/prometheus-webhook-dingtalk

VOLUME     [ "/dingtalk" ]
WORKDIR    /dingtalk
EXPOSE      8086
ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
