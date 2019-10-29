FROM v2ray/official

COPY config.json /etc/v2ray/

CMD ["v2ray", "-config=/etc/v2ray/config.json"]

### for debug
#FROM v2ray/official as builder
#FROM gotechnies/alpine-ssh

# COPY --from=builder /usr/bin/v2ray/v2ray /usr/bin/v2ray/
# COPY --from=builder /usr/bin/v2ray/v2ctl /usr/bin/v2ray/
# COPY --from=builder /usr/bin/v2ray/geoip.dat /usr/bin/v2ray/
# COPY --from=builder /usr/bin/v2ray/geosite.dat /usr/bin/v2ray/
# COPY config.json /etc/v2ray/config.json

# RUN set -ex && \
#     apk --no-cache add ca-certificates && \
#     mkdir /var/log/v2ray/ &&\
#     chmod +x /usr/bin/v2ray/v2ctl && \
#     chmod +x /usr/bin/v2ray/v2ray

# ENV PATH /usr/bin/v2ray:$PATH

# CMD ["/usr/sbin/sshd","-D"]
