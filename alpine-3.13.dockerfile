FROM alpine:3.13 as builder
RUN apk add --update git linux-headers build-base
WORKDIR /root
RUN git clone --depth 1 --branch 20200818.0 https://github.com/wangyu-/udp2raw-tunnel.git
WORKDIR /root/udp2raw-tunnel
RUN make dynamic

FROM alpine:3.13
RUN apk add --update libstdc++ iptables && rm -rf /var/cache/apk/*
COPY --from=builder /root/udp2raw-tunnel/udp2raw_dynamic /bin/udp2raw
ENTRYPOINT [ "/bin/udp2raw" ]