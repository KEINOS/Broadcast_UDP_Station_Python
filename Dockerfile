FROM python:3-alpine

USER root

RUN apk --no-cache add socat

ARG port_udp_broadcast=5963
ARG name_host_self='broadcaster_py3'
ARG time_interval_send=5

ENV NAME_HOST_SELF=$name_host_self\
    PORT_UDP_BROADCAST=$port_udp_broadcast \
    TIME_INTERVAL_SEND=$time_interval_send

COPY . /app

ENTRYPOINT [ "/app/broadcaster.sh" ]
